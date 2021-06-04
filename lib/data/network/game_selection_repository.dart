import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dice/data/model/game.dart';

class FirebaseGameSelectionRepository {
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
}
