import 'package:dice/data/model/game.dart';
import 'package:dice/data/network/supabase_client_extensions.dart';

abstract class GamesRepository {
  static GamesRepository? _instance;

  GamesRepository._();

  factory GamesRepository() {
    _instance ??= SupabaseGamesRepository();
    return _instance!;
  }

  Future<int?> createGame(String name);
  Future<bool> isGameJoinable(String name);
  Future<Game?> getGame(String name);
  Stream<Game?> gameStream(int id);
}

class SupabaseGamesRepository extends GamesRepository {
  SupabaseGamesRepository._() : super._();

  factory SupabaseGamesRepository() => SupabaseGamesRepository._();

  // todo: don't set the status client-side, use cloud functions
  @override
  Future<int?> createGame(String name) =>
      SupabaseClientExtensions.instance.rpc('add_game', params: {'name': name}).execute().then((value) => value.data);

  @override
  Future<bool> isGameJoinable(String name) => SupabaseClientExtensions.instance
      .rpc('is_game_joinable', params: {'name': name})
      .execute()
      .then((value) => value.data);

  @override
  Future<Game?> getGame(String name) => SupabaseClientExtensions.instance
      .from('games')
      .select()
      .eq('name', name)
      .limit(1)
      .execute()
      .then((value) => value.data.isNotEmpty ? value.data.map((item) => Game.fromJson(item)).toList()[0] : null);

  @override
  Stream<Game?> gameStream(int id) => SupabaseClientExtensions.instance
      .from('games:id=eq.$id')
      .stream(['id'])
      .limit(1)
      .execute()
      .asyncMap((data) => data.isNotEmpty ? data.map((item) => Game.fromJson(item)).toList()[0] : null);
}
