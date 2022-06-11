import 'package:dice/data/model/player.dart';
import 'package:dice/data/network/supabase_client_extensions.dart';

abstract class PlayersRepository {
  static PlayersRepository? _instance;

  PlayersRepository._();

  factory PlayersRepository() {
    _instance ??= SupabasePlayersRepository();
    return _instance!;
  }

  Future<int?> createPlayer(String playerName);
  Future<bool> doesPlayerExist(String name);
  Future<Player?> getPlayer(int id);
}

class SupabasePlayersRepository extends PlayersRepository {
  SupabasePlayersRepository._() : super._();

  factory SupabasePlayersRepository() => SupabasePlayersRepository._();

  @override
  Future<int?> createPlayer(String playerName) => SupabaseClientExtensions.instance
      .rpc('add_player', params: {'name': playerName})
      .execute()
      .then((value) => value.data);

  @override
  Future<bool> doesPlayerExist(String name) => SupabaseClientExtensions.instance
      .rpc('does_player_exist', params: {'name': name})
      .execute()
      .then((value) => value.data);

  @override
  Future<Player?> getPlayer(int id) => SupabaseClientExtensions.instance
      .from('players')
      .select()
      .eq('id', id)
      .limit(1)
      .execute()
      .then((value) => value.data.isNotEmpty ? value.data.map((item) => Player.fromJson(item)).toList()[0] : null);
}
