import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_rebuild_strategy/screens.dart';


GoRouter buildRouter(GlobalKey<NavigatorState> navigatorKey) {

  return GoRouter(
      navigatorKey: navigatorKey,
      initialLocation: '/',
      routes: [
        GoRoute(
            path: '/',
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                  key: state.pageKey,
                  child: Home()
              );
            }),
        GoRoute(
            path: '/one',
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                key: state.pageKey,
                child: ScreenOne()
              );
            }),
        GoRoute(
            path: '/two',
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                  key: state.pageKey,
                  child: ScreenTwo()
              );
            }),
        GoRoute(
            path: '/three',
            pageBuilder: (BuildContext context, GoRouterState state) {
              return MaterialPage(
                  key: state.pageKey,
                  child: ScreenThree()
              );
            }),
      ]);
}