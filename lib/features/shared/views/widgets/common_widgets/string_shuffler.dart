import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StringShuffler extends ConsumerStatefulWidget {
  const StringShuffler({
    super.key,
    required this.strings,
    required this.builder,
    this.inSequence = false,
    this.shuffleDuration = const Duration(milliseconds: 1000),
  });

  /// The strings to shuffle.
  final List<String> strings;

  /// The builder to build the widget with the selected string.
  final Widget Function(BuildContext, String) builder;

  /// Whether to shuffle the strings in sequence or not.
  final bool inSequence;

  /// The duration after which the strings should be shuffled.
  final Duration shuffleDuration;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _StringShufflerState();
}

class _StringShufflerState extends ConsumerState<StringShuffler> {
  late String _selectedString;
  late final Timer _timer;

  @override
  void initState() {
    super.initState();
    _selectedString = widget.strings.first;
    _timer = Timer.periodic(widget.shuffleDuration, (_) {
      _shuffleStrings();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _shuffleStrings() {
    if (widget.inSequence) {
      final index = widget.strings.indexOf(_selectedString);

      var nextIndex = index + 1;
      nextIndex = nextIndex == widget.strings.length ? 0 : nextIndex;

      setState(() {
        _selectedString = widget.strings[nextIndex];
      });
    } else {
      final random = Random();
      final randomIndex = random.nextInt(widget.strings.length);
      setState(() {
        _selectedString = widget.strings[randomIndex];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _selectedString);
  }
}
