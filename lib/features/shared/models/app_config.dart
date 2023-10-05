class AppConfig {
  final String applicationName = 'Shrijan Regmi';

  final String applicationId = 'com.personal.shrijan';
}

class DevAppConfig extends AppConfig {
  @override
  String get applicationName => '[DEV] ${super.applicationName}';

  @override
  String get applicationId => '${super.applicationId}.dev';
}
