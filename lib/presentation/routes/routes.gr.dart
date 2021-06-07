// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:flutter/widgets.dart' as _i6;

import '../game_lobby/game_lobby_page.dart' as _i5;
import '../game_selection/game_selection_page.dart' as _i4;
import '../player_selection/player_selection_page.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    PlayerSelectionRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.PlayerSelectionPage();
        }),
    GameSelectionRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<GameSelectionRouteArgs>(
              orElse: () => const GameSelectionRouteArgs());
          return _i4.GameSelectionPage(key: args.key);
        }),
    GameLobbyRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final pathParams = data.pathParams;
          final args = data.argsAs<GameLobbyRouteArgs>(
              orElse: () =>
                  GameLobbyRouteArgs(gameId: pathParams.getString('id')));
          return _i5.GameLobbyPage(gameId: args.gameId);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig('/#redirect',
            path: '/', redirectTo: '/player', fullMatch: true),
        _i1.RouteConfig(PlayerSelectionRoute.name, path: '/player'),
        _i1.RouteConfig(GameSelectionRoute.name, path: '/games'),
        _i1.RouteConfig(GameLobbyRoute.name, path: '/games/:id')
      ];
}

class PlayerSelectionRoute extends _i1.PageRouteInfo {
  const PlayerSelectionRoute() : super(name, path: '/player');

  static const String name = 'PlayerSelectionRoute';
}

class GameSelectionRoute extends _i1.PageRouteInfo<GameSelectionRouteArgs> {
  GameSelectionRoute({_i6.Key? key})
      : super(name, path: '/games', args: GameSelectionRouteArgs(key: key));

  static const String name = 'GameSelectionRoute';
}

class GameSelectionRouteArgs {
  const GameSelectionRouteArgs({this.key});

  final _i6.Key? key;
}

class GameLobbyRoute extends _i1.PageRouteInfo<GameLobbyRouteArgs> {
  GameLobbyRoute({required String gameId})
      : super(name,
            path: '/games/:id',
            args: GameLobbyRouteArgs(gameId: gameId),
            rawPathParams: {'id': gameId});

  static const String name = 'GameLobbyRoute';
}

class GameLobbyRouteArgs {
  const GameLobbyRouteArgs({required this.gameId});

  final String gameId;
}
