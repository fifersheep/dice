class Participation {
  Participation({
    required this.gameId,
    required this.playerId,
    required this.playeReady,
    this.betQuantity,
    this.betValue,
  });

  final int gameId;
  final int playerId;
  final bool playeReady;
  final int? betQuantity;
  final int? betValue;

  static Participation fromJson(Map<String, dynamic> data) {
    return Participation(
      gameId: data['game_id'],
      playerId: data['player_id'],
      playeReady: data['player_ready'],
      betQuantity: data['bet_quantity'],
      betValue: data['bet_value'],
    );
  }

  toJson() => {
        'game_id': gameId,
        'player_id': playerId,
        'player_ready': playeReady,
        'bet_quantity': betQuantity,
        'bet_value': betValue,
      };
}
