class Game {
  Game({
    required this.id,
    required this.name,
    required this.status,
  });

  final String id;
  final String name;
  final String status;

  static fromJson(String id, Map<String, dynamic> data) {
    return Game(
      id: id,
      name: data['name'],
      status: data['status'],
    );
  }

  toJson() => {
        'name': name,
        'status': status,
      };
}
