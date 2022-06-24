// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../game_selection/game_selection_page.dart' as _i2;
import '../gameplay/game_lobby_page.dart' as _i3;
import '../player_selection/player_selection_page.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    PlayerSelectionRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.PlayerSelectionPage());
    },
    GameSelectionRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.GameSelectionPage());
    },
    GameLobbyRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<GameLobbyRouteArgs>(
          orElse: () => GameLobbyRouteArgs(gameId: pathParams.getInt('id')));
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.GameLobbyPage(key: args.key, gameId: args.gameId));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig('/#redirect',
            path: '/', redirectTo: '/player', fullMatch: true),
        _i4.RouteConfig(PlayerSelectionRoute.name, path: '/player'),
        _i4.RouteConfig(GameSelectionRoute.name, path: '/games'),
        _i4.RouteConfig(GameLobbyRoute.name, path: '/games/:id')
      ];
}

/// generated route for
/// [_i1.PlayerSelectionPage]
class PlayerSelectionRoute extends _i4.PageRouteInfo<void> {
  const PlayerSelectionRoute()
      : super(PlayerSelectionRoute.name, path: '/player');

  static const String name = 'PlayerSelectionRoute';
}

/// generated route for
/// [_i2.GameSelectionPage]
class GameSelectionRoute extends _i4.PageRouteInfo<void> {
  const GameSelectionRoute() : super(GameSelectionRoute.name, path: '/games');

  static const String name = 'GameSelectionRoute';
}

/// generated route for
/// [_i3.GameLobbyPage]
class GameLobbyRoute extends _i4.PageRouteInfo<GameLobbyRouteArgs> {
  GameLobbyRoute({_i5.Key? key, required int gameId})
      : super(GameLobbyRoute.name,
            path: '/games/:id',
            args: GameLobbyRouteArgs(key: key, gameId: gameId),
            rawPathParams: {'id': gameId});

  static const String name = 'GameLobbyRoute';
}

class GameLobbyRouteArgs {
  const GameLobbyRouteArgs({this.key, required this.gameId});

  final _i5.Key? key;

  final int gameId;

  @override
  String toString() {
    return 'GameLobbyRouteArgs{key: $key, gameId: $gameId}';
  }
}
