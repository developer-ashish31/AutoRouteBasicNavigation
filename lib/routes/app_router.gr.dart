// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../pages/dashboard_page.dart' as _i1;
import '../pages/post_page.dart' as _i2;
import '../pages/setting_page.dart' as _i4;
import '../pages/user_page.dart' as _i3;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    DashboardRoute.name: (routeData) {
      final args = routeData.argsAs<DashboardRouteArgs>(
          orElse: () => const DashboardRouteArgs());
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.DashboardPage(key: args.key),
      );
    },
    PostRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.PostPage(),
      );
    },
    UserRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.UserPage(),
      );
    },
    SettingRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SettingPage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          DashboardRoute.name,
          path: '/',
          children: [
            _i5.RouteConfig(
              '#redirect',
              path: '',
              parent: DashboardRoute.name,
              redirectTo: 'postPage',
              fullMatch: true,
            ),
            _i5.RouteConfig(
              PostRoute.name,
              path: 'postPage',
              parent: DashboardRoute.name,
            ),
            _i5.RouteConfig(
              UserRoute.name,
              path: 'user-page',
              parent: DashboardRoute.name,
            ),
            _i5.RouteConfig(
              SettingRoute.name,
              path: 'setting-page',
              parent: DashboardRoute.name,
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.DashboardPage]
class DashboardRoute extends _i5.PageRouteInfo<DashboardRouteArgs> {
  DashboardRoute({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          DashboardRoute.name,
          path: '/',
          args: DashboardRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';
}

class DashboardRouteArgs {
  const DashboardRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'DashboardRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.PostPage]
class PostRoute extends _i5.PageRouteInfo<void> {
  const PostRoute()
      : super(
          PostRoute.name,
          path: 'postPage',
        );

  static const String name = 'PostRoute';
}

/// generated route for
/// [_i3.UserPage]
class UserRoute extends _i5.PageRouteInfo<void> {
  const UserRoute()
      : super(
          UserRoute.name,
          path: 'user-page',
        );

  static const String name = 'UserRoute';
}

/// generated route for
/// [_i4.SettingPage]
class SettingRoute extends _i5.PageRouteInfo<void> {
  const SettingRoute()
      : super(
          SettingRoute.name,
          path: 'setting-page',
        );

  static const String name = 'SettingRoute';
}
