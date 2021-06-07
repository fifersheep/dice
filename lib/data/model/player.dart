class Player {
  Player({
    required this.name,
  });

  final String name;

  static fromJson(String id, Map<String, dynamic> data) {
    return Player(
      name: data['name'],
    );
  }

  toJson() => {
        'name': name,
      };
}
