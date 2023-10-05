import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  static const route = '/home';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shrijan Regmi'),
      ),
      body: const Center(
        child: Text(
          'ELIOT',
          style: TextStyle(
            fontSize: 300.0,
            fontWeight: FontWeight.w900,
            letterSpacing: 10.0,
          ),
        ),
      ),
    );
  }
}
