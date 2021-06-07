class Player {
  Player({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;

  static fromJson(String id, Map<String, dynamic> data) {
    return Player(
      id: id,
      name: data['name'],
    );
  }

  toJson() => {
        'name': name,
      };
}
