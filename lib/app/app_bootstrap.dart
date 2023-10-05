import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shrijan/app/app.dart';
import 'package:shrijan/features/shared/enums/flavor.dart';
import 'package:shrijan/features/shared/providers/app_config_provider.dart';

class AppBootstrap {
  /// A class that initializes the application.
  AppBootstrap({
    required final Flavor flavor,
  }) : _flavor = flavor {
    _init();
  }

  final Flavor _flavor;

  /// The main entry point of the application.
  void _init() {
    runApp(
      ProviderScope(
        overrides: providerOverrides,
        child: const MyApp(),
      ),
    );
  }

  /// A list of providers that are overridden based on the flavor.
  List<Override> get providerOverrides {
    return [
      if (_flavor == Flavor.dev)
        providerOfAppConfig.overrideWith(
          (ref) => ref.watch(providerOfDevAppConfig),
        )
    ];
  }
}
