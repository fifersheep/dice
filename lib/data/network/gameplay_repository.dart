import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dice/data/model/game.dart';

class FirebaseGameplayRepository {
  final _games =
      FirebaseFirestore.instance.collection('games').withConverter<Game>(
            fromFirestore: (snapshot, _) =>
                Game.fromJson(snapshot.id, snapshot.data()!),
            toFirestore: (game, _) => game.toJson(),
          );

  Stream<Game?> getGame(String gameId) =>
      _games.doc(gameId).snapshots().map((e) => e.data() ?? null);
}
