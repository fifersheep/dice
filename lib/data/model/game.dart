class Game {
  Game({
    required this.id,
    required this.name,
    required this.status,
  });

  final String id;
  final String name;
  final GameStatus status;

  static Game fromJson(Map<String, dynamic> data) {
    final statuses = {
      'Created': GameStatus.Created,
      'Started': GameStatus.Started,
      'Ended': GameStatus.Ended,
    };

    return Game(
      id: "${data['id']}",
      name: data['name'],
      status: statuses[data['status']] ?? GameStatus.Ended,
    );
  }

  toJson() => {
        'name': name,
        'status': status.valueString(),
      };
}

enum GameStatus { Created, Started, Ended }

extension GetValueString on GameStatus {
  String valueString() => this.toString().split('.').last;
}
