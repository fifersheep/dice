import 'package:dice/data/network/response.dart';
import 'package:dice/data/network/supabase_client_extensions.dart';

abstract class BetPlacementRepository {
  static BetPlacementRepository? _instance;

  BetPlacementRepository._();

  factory BetPlacementRepository() {
    _instance ??= SupabaseBetPlacementRepository();
    return _instance!;
  }

  Future<Response<String>> placeBet({
    required int gameId,
    required int playerId,
    required String participationCupId,
    required int betQuantity,
    required int betValue,
  });
}

class SupabaseBetPlacementRepository extends BetPlacementRepository {
  SupabaseBetPlacementRepository._() : super._();

  factory SupabaseBetPlacementRepository() => SupabaseBetPlacementRepository._();

  @override
  Future<Response<String>> placeBet({
    required int gameId,
    required int playerId,
    required String participationCupId,
    required int betQuantity,
    required int betValue,
  }) =>
      SupabaseClientExtensions.instance
          .rpc('place_bet', params: {
            'game_id': gameId,
            'player_id': playerId,
            'participation_cup_id': participationCupId,
            'bet_quantity': betQuantity,
            'bet_value': betValue,
          })
          .execute()
          .then((res) => Response.from(res));
}
