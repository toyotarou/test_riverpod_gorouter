import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:test_riverpod2_gorouter/screens/first_sub_screen.dart';
import 'package:test_riverpod2_gorouter/screens/first_screen.dart';
import 'package:test_riverpod2_gorouter/screens/second_screen.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    routes: <RouteBase>[
      ///

      GoRoute(
        path: '/',
        name: FirstScreen.rootName,
        builder: (BuildContext context, GoRouterState state) =>
            const FirstScreen(),
        routes: <RouteBase>[
          GoRoute(
            path: 'firstSubScreen',
            name: FirstSubScreen.rootName,
            builder: (BuildContext context, GoRouterState state) =>
                const FirstSubScreen(),
          ),
        ],
      ),

      ///

      GoRoute(
        path: '/second',
        name: SecondScreen.rootName,
        builder: (BuildContext context, GoRouterState state) =>
            const SecondScreen(),
      ),

      ///
    ],
  );
});
