import 'package:dice/data/model/participation.dart';
import 'package:dice/data/network/response.dart';
import 'package:dice/data/network/supabase_client_extensions.dart';

abstract class ParticipationsRepository {
  static ParticipationsRepository? _instance;

  ParticipationsRepository._();

  factory ParticipationsRepository() {
    _instance ??= SupabaseParticipationsRepository();
    return _instance!;
  }

  Stream<List<Participation>> getParticipations(int gameId);
  Future<Response<List<int>>> getDice(String id);
  Future<String> addParticipation(int gameId, int playerId);
  Future<void> setParticipationReady(int gameId, int playerId, bool isReady);
}

class SupabaseParticipationsRepository extends ParticipationsRepository {
  SupabaseParticipationsRepository._() : super._();

  factory SupabaseParticipationsRepository() => SupabaseParticipationsRepository._();

  @override
  Stream<List<Participation>> getParticipations(int gameId) => SupabaseClientExtensions.instance
      .from('participations:game_id=eq.$gameId')
      .stream(['game_id', 'player_id'])
      .execute()
      .asyncMap((data) => data.map((item) => Participation.fromJson(item)).toList());

  @override
  Future<Response<List<int>>> getDice(String id) => SupabaseClientExtensions.instance
      .rpc('get_dice', params: {
        'id': id,
      })
      .execute()
      .then((res) => Response.from(res, () {
            final dyn = res.data as List<dynamic>;
            return dyn.map((e) => e as int).toList();
          }));

  @override
  Future<String> addParticipation(int gameId, int playerId) async => SupabaseClientExtensions.instance
      .rpc('create_participation', params: {
        'game_id': gameId,
        'player_id': playerId,
      })
      .execute()
      .then((res) => res.data as String);

  @override
  Future<void> setParticipationReady(int gameId, int playerId, bool isReady) =>
      SupabaseClientExtensions.instance.rpc('set_player_ready', params: {
        'game_id': gameId,
        'player_id': playerId,
        'player_ready': isReady,
      }).execute();
}
