import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class FirstSubScreen extends ConsumerWidget {
  const FirstSubScreen({super.key});

  static const rootName = 'firstSubScreen';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text("First Sub Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("First Sub Screen"),
            ElevatedButton(
              onPressed: () => context.pop(),
              child: const Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
