import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SecondScreen extends ConsumerWidget {
  const SecondScreen({super.key});

  static const rootName = '/second';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Screen")),
      body: const Center(
        child: Column(
          children: [
            Text("SecondScreen"),
          ],
        ),
      ),
    );
  }
}
