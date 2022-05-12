import 'dart:convert';

import 'package:dice/data/local/current_player.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static Future<void> storeUniqueId(int gameId, int playerId, String uniqueId) =>
      SharedPreferences.getInstance().then((prefs) async {
        final CurrentPlayer currentPlayerData;
        final currentPlayerDataStr = prefs.getString("currentPlayerData");
        if (currentPlayerDataStr != null) {
          currentPlayerData = CurrentPlayer.fromJson(jsonDecode(currentPlayerDataStr));
        } else {
          currentPlayerData = CurrentPlayer(id: playerId, gameParticipationUniqueIds: {});
        }

        currentPlayerData.gameParticipationUniqueIds.putIfAbsent(gameId, () => uniqueId);

        await prefs.setString('currentPlayerData', jsonEncode(currentPlayerData.toJson()));
      });

  static Future<void> setCurrentPlayer(int playerId) => SharedPreferences.getInstance().then((prefs) async {
        await prefs.setString(
            'currentPlayerData',
            jsonEncode(CurrentPlayer(
              id: playerId,
              gameParticipationUniqueIds: {},
            ).toJson()));
      });

  static Future<CurrentPlayer?> getCurrentPlayer() => SharedPreferences.getInstance().then((prefs) async {
        final value = prefs.getString("currentPlayerData");
        return value != null ? CurrentPlayer.fromJson(jsonDecode(value)) : null;
      });
}
