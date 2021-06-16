import * as functions from "firebase-functions";
import firebase from "firebase-admin";

firebase.initializeApp();

export const joinGame = functions.firestore
  .document("participants/{docId}")
  .onCreate(async (change, _) => {
    const data = change.data();

    const preExistingDocs = firebase
      .firestore()
      .collection("participants")
      .where("playerId", "==", data["playerId"])
      .where("gameId", "==", data["gameId"])
      .get();

    const participants = (await preExistingDocs).docs;
    const alreadyCreated = participants.length > 1;

    if (alreadyCreated) {
      return change.ref.delete();
    } else {
      return Promise.resolve();
    }
  });

export const startGame = functions.firestore
  .document("participants/{docId}")
  .onUpdate(async (change, _) => {
    const gameId = change.after.data()["gameId"];
    const participants = await firebase
      .firestore()
      .collection("participants")
      .where("gameId", "==", gameId)
      .get();

    const allParticipantsReady = participants.docs.every(
      (participant) => participant.data()["ready"]
    );

    const enoughPlayers = participants.size > 1;

    if (allParticipantsReady && enoughPlayers) {
      return firebase.firestore().collection("games").doc(gameId).update({
        status: "Started",
      });
    } else {
      return Promise.resolve();
    }
  });
