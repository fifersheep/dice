class Participation {
  Participation({
    required this.gameId,
    required this.playerId,
    required this.playerReady,
    this.diceQuantity,
    this.betQuantity,
    this.betValue,
  });

  final int gameId;
  final int playerId;
  final bool playerReady;
  final int? diceQuantity;
  final int? betQuantity;
  final int? betValue;

  static Participation fromJson(Map<String, dynamic> data) {
    return Participation(
      gameId: data['game_id'],
      playerId: data['player_id'],
      playerReady: data['player_ready'],
      diceQuantity: data['dice_quantity'],
      betQuantity: data['bet_quantity'],
      betValue: data['bet_value'],
    );
  }

  toJson() => {
        'game_id': gameId,
        'player_id': playerId,
        'player_ready': playerReady,
        'dice_quantity': diceQuantity,
        'bet_quantity': betQuantity,
        'bet_value': betValue,
      };
}
