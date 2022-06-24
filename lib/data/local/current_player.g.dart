// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentPlayer _$CurrentPlayerFromJson(Map<String, dynamic> json) =>
    CurrentPlayer(
      id: json['id'] as int,
      gameParticipationCupIds:
          (json['game_participation_cup_ids'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(int.parse(k), e as String),
      ),
    );

Map<String, dynamic> _$CurrentPlayerToJson(CurrentPlayer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'game_participation_cup_ids': instance.gameParticipationCupIds
          .map((k, e) => MapEntry(k.toString(), e)),
    };
