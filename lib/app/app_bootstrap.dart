import 'package:easy_localization/easy_localization.dart';
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
  void _init() async {
    WidgetsFlutterBinding.ensureInitialized();

    await _initPlugins();

    runApp(
      ProviderScope(
        overrides: providerOverrides,
        child: EasyLocalization(
          path: 'assets/translations',
          supportedLocales: const [
            Locale('en'),
            Locale('ne'),
          ],
          fallbackLocale: const Locale('en'),
          child: const MyApp(),
        ),
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

  /// Initializes various plugins.
  Future<void> _initPlugins() async {
    await Future.wait([
      _initLocalizations(),
    ]);
  }

  /// Initializes the localization.
  Future<void> _initLocalizations() async {
    await EasyLocalization.ensureInitialized();
  }
}
