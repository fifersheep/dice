import 'package:auto_route/auto_route.dart';
import 'package:dice/presentation/game_lobby/game_lobby_page.dart';
import 'package:dice/presentation/game_selection/game_selection_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: '/games', page: GameSelectionPage, initial: true),
    AutoRoute(path: '/games/:id', page: GameLobbyPage),
  ],
)
class $AppRouter {}
