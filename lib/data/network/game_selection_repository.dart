import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dice/data/model/game.dart';

class FirebaseGameSelectionRepository {
  final _games =
      FirebaseFirestore.instance.collection('games').withConverter<Game>(
            fromFirestore: (snapshot, _) =>
                Game.fromJson(snapshot.id, snapshot.data()!),
            toFirestore: (game, _) => game.toJson(),
          );

  Future<void> createGame(String gameTitle) {
    return _games
        .add(Game(id: "", name: gameTitle, status: "Created"))
        .then((game) => print("Game Created: ${game.id}"))
        .catchError((error) => print("Failed to create game: $error"));
  }
}
