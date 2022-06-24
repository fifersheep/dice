import 'package:json_annotation/json_annotation.dart';

part 'current_player.g.dart';

@JsonSerializable()
class CurrentPlayer {
  CurrentPlayer({
    required this.id,
    required this.gameParticipationCupIds,
  });

  final int id;

  @JsonKey(name: "game_participation_cup_ids")
  final Map<int, String> gameParticipationCupIds;

  factory CurrentPlayer.fromJson(Map<String, dynamic> json) => _$CurrentPlayerFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentPlayerToJson(this);
}
