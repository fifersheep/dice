class Player {
  Player({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;

  static Player fromJson(Map<String, dynamic> data) {
    return Player(
      id: data['id'],
      name: data['name'],
    );
  }

  toJson() => {
        'name': name,
      };
}
