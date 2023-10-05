import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shrijan/features/shared/models/app_config.dart';

/// A provider that returns the [AppConfig] for prod flavor.
final providerOfAppConfig = Provider<AppConfig>((ref) {
  return AppConfig();
});

/// A provider that returns the [AppConfig] for dev flavor.
final providerOfDevAppConfig = Provider<AppConfig>((ref) {
  return DevAppConfig();
});
