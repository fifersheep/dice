import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dice/data/model/participant.dart';

class FirebaseParticipantsRepository {
  final _participants = FirebaseFirestore.instance
      .collection('participants')
      .withConverter<Participant>(
        fromFirestore: (snapshot, _) =>
            Participant.fromJson(snapshot.id, snapshot.data()!),
        toFirestore: (participant, _) => participant.toJson(),
      );

  Stream<List<Participant>> getParticipants(String gameId) => _participants
      .where('gameId', isEqualTo: gameId)
      .snapshots()
      .map((e) => e.docs.map((e) => e.data()).toList());
}
