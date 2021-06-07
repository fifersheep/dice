import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dice/data/model/player.dart';

class FirebasePlayersRepository {
  final _players =
      FirebaseFirestore.instance.collection('players').withConverter<Player>(
            fromFirestore: (snapshot, _) =>
                Player.fromJson(snapshot.id, snapshot.data()!),
            toFirestore: (player, _) => player.toJson(),
          );

  Future<Player?> createPlayer(String playerName) => _players
      .add(Player(id: '', name: playerName))
      .then((snapshot) => snapshot.get())
      .then((player) => player.data());

  Future<Player?> searchPlayer(String name) => _players
      .where('name', isEqualTo: name)
      .limit(1)
      .get()
      .then((snapshot) => snapshot.size > 0 ? snapshot.docs[0].data() : null);

  Future<Player?> getPlayer(String id) =>
      _players.doc(id).get().then((snapshot) => snapshot.data());

  Stream<Player?> playersStream(String playerId) =>
      _players.doc(playerId).snapshots().map((e) => e.data());
}
