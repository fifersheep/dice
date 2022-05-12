import 'package:json_annotation/json_annotation.dart';

part 'current_player.g.dart';

@JsonSerializable()
class CurrentPlayer {
  CurrentPlayer({
    required this.id,
    required this.gameParticipationUniqueIds,
  });

  final int id;

  @JsonKey(name: "game_participation_unique_ids")
  final Map<int, String> gameParticipationUniqueIds;

  factory CurrentPlayer.fromJson(Map<String, dynamic> json) => _$CurrentPlayerFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentPlayerToJson(this);
}
