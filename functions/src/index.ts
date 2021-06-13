import * as functions from "firebase-functions";
import firebase from "firebase-admin";

firebase.initializeApp();

const db = firebase.firestore();

export const joinGame = functions.firestore
  .document("participants/{docId}")
  .onCreate(async (change, _) => {
    const data = change.data();

    const preExistingDocs = db
      .collection("participants")
      .where("playerId", "==", data["playerId"])
      .where("gameId", "==", data["gameId"])
      .get();

    const participants = (await preExistingDocs).docs;
    const alreadyCreated = participants.length > 1;

    if (alreadyCreated) {
      change.ref.delete();
      return preExistingDocs;
    } else {
      return change;
    }
  });

export const startGame = functions.firestore
  .document("participants/{docId}")
  .onUpdate((change, context) => {
    const gameId = change.after.data()["gameId"];
    db.collection("participants")
      .where("gameId", "==", gameId)
      .get()
      .then((participants) => {
        const allParticipantsReady = participants.docs.every(
          (participant) => participant.data()["ready"]
        );
        const enoughPlayers = participants.size > 1;

        if (allParticipantsReady && enoughPlayers) {
          db.collection("games").doc(gameId).update({
            status: "Started",
          });
        }
      });
  });
