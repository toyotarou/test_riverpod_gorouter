import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:test_riverpod2_gorouter/screens/first_sub_screen.dart';
import 'package:test_riverpod2_gorouter/screens/second_screen.dart';

class FirstScreen extends ConsumerWidget {
  const FirstScreen({super.key});

  static const rootName = '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text("First Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("FirstScreen"),

            ///

            ElevatedButton(
              onPressed: () => context.goNamed(FirstSubScreen.rootName),
              child: const Text("FirstSubScreen"),
            ),

            ///

            ElevatedButton(
              onPressed: () => context.goNamed(SecondScreen.rootName),
              child: const Text("SecondScreen"),
            ),

            ///
          ],
        ),
      ),
    );
  }
}
