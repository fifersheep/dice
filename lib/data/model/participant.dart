class Participant {
  Participant({
    required this.id,
    required this.gameId,
    required this.playerId,
    required this.betQuantity,
    required this.betValue,
    required this.ready,
  });

  final String id;
  final String gameId;
  final String playerId;
  final int? betQuantity;
  final int? betValue;
  final bool ready;

  static fromJson(String id, Map<String, dynamic> data) {
    return Participant(
      id: id,
      gameId: data['gameId'],
      playerId: data['playerId'],
      betQuantity: data['betQuantity'],
      betValue: data['betValue'],
      ready: data['ready'],
    );
  }

  toJson() => {
        'gameId': gameId,
        'playerId': playerId,
        'betQuantity': betQuantity,
        'betValue': betValue,
        'ready': ready,
      };
}
