import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dice/data/model/player.dart';

class FirebasePlayersRepository {
  final _players =
      FirebaseFirestore.instance.collection('players').withConverter<Player>(
            fromFirestore: (snapshot, _) =>
                Player.fromJson(snapshot.id, snapshot.data()!),
            toFirestore: (player, _) => player.toJson(),
          );

  Future<Player?> getPlayer(String playerId) =>
      _players.doc(playerId).get().then((snapshot) => snapshot.data());

  Stream<Player?> playersStream(String playerId) =>
      _players.doc(playerId).snapshots().map((e) => e.data());
}
