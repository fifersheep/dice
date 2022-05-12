class Game {
  Game({
    required this.id,
    required this.name,
    required this.status,
    required this.currentPlayerId,
  });

  final String id;
  final String name;
  final GameStatus status;
  final int? currentPlayerId;

  static Game fromJson(Map<String, dynamic> data) {
    final statuses = {
      'Created': GameStatus.Created,
      'Rolling': GameStatus.Rolling,
      'InPlay': GameStatus.InPlay,
      'Ended': GameStatus.Ended,
    };

    return Game(
      id: "${data['id']}",
      name: data['name'],
      status: statuses[data['status']] ?? GameStatus.Ended,
      currentPlayerId: data['current_player_id'],
    );
  }

  toJson() => {
        'name': name,
        'status': status.valueString(),
        'current_player_id': currentPlayerId,
      };
}

enum GameStatus { Created, Rolling, InPlay, Ended }

extension GetValueString on GameStatus {
  String valueString() => this.toString().split('.').last;
}
