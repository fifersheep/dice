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
          routeData: routeData, child: _i1.PlayerSelectionPage());
    },
    GameSelectionRoute.name: (routeData) {
      final args = routeData.argsAs<GameSelectionRouteArgs>(
          orElse: () => const GameSelectionRouteArgs());
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.GameSelectionPage(key: args.key));
    },
    GameLobbyRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<GameLobbyRouteArgs>(
          orElse: () => GameLobbyRouteArgs(gameId: pathParams.getString('id')));
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.GameLobbyPage(gameId: args.gameId));
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
class GameSelectionRoute extends _i4.PageRouteInfo<GameSelectionRouteArgs> {
  GameSelectionRoute({_i5.Key? key})
      : super(GameSelectionRoute.name,
            path: '/games', args: GameSelectionRouteArgs(key: key));

  static const String name = 'GameSelectionRoute';
}

class GameSelectionRouteArgs {
  const GameSelectionRouteArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'GameSelectionRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.GameLobbyPage]
class GameLobbyRoute extends _i4.PageRouteInfo<GameLobbyRouteArgs> {
  GameLobbyRoute({required String gameId})
      : super(GameLobbyRoute.name,
            path: '/games/:id',
            args: GameLobbyRouteArgs(gameId: gameId),
            rawPathParams: {'id': gameId});

  static const String name = 'GameLobbyRoute';
}

class GameLobbyRouteArgs {
  const GameLobbyRouteArgs({required this.gameId});

  final String gameId;

  @override
  String toString() {
    return 'GameLobbyRouteArgs{gameId: $gameId}';
  }
}
