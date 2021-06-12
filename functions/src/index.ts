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
