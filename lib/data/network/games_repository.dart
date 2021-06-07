import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dice/data/model/game.dart';

class FirebaseGamesRepository {
  final _games =
      FirebaseFirestore.instance.collection('games').withConverter<Game>(
            fromFirestore: (snapshot, _) =>
                Game.fromJson(snapshot.id, snapshot.data()!),
            toFirestore: (game, _) => game.toJson(),
          );

  Future<Game?> createGame(String gameName) => _games
      .add(Game(id: '', name: gameName, status: GameStatus.Created))
      .then((documentSnapshot) => documentSnapshot.get())
      .then((game) => game.data());

  Future<Game?> getGame(String gameName) =>
      _games.where('name', isEqualTo: gameName).limit(1).get().then((snapshot) {
        return snapshot.size > 0 ? snapshot.docs[0].data() : null;
      });

  Stream<Game?> gameStream(String gameId) =>
      _games.doc(gameId).snapshots().map((e) => e.data());
}
