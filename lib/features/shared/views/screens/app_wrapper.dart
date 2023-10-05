import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shrijan/features/home/views/screens/home_screen.dart';

class AppWrapper extends ConsumerWidget {
  /// This is the main wrapper of the application that decides which screen to show first.
  const AppWrapper({super.key});

  static const route = '/';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const HomeScreen();
  }
}
