class Game {
  Game({
    required this.id,
    required this.name,
    required this.status,
    required this.currentPlayerId,
  });

  final int id;
  final String name;
  final GameStatus status;
  final int? currentPlayerId;

  static Game fromJson(Map<String, dynamic> data) {
    final statuses = {
      'Created': GameStatus.created,
      'Rolling': GameStatus.rolling,
      'InPlay': GameStatus.inPlay,
      'Ended': GameStatus.ended,
    };

    return Game(
      id: data['id'],
      name: data['name'],
      status: statuses[data['status']] ?? GameStatus.ended,
      currentPlayerId: data['current_player_id'],
    );
  }

  toJson() => {
        'name': name,
        'status': status.valueString(),
        'current_player_id': currentPlayerId,
      };
}

enum GameStatus { created, rolling, inPlay, ended }

extension GetValueString on GameStatus {
  String valueString() {
    final raw = toString().split('.').last;
    return "${raw[0].toUpperCase()}${raw.substring(1)}";
  }
}
