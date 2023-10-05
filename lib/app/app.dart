import 'package:flutter/material.dart';
import 'package:shrijan/app/app_router.dart';
import 'package:shrijan/app/app_theme.dart';
import 'package:shrijan/features/shared/views/screens/app_wrapper.dart';

class MyApp extends StatelessWidget {
  /// The starting widget of the application.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shrijan Regmi',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightThemePalette,
      darkTheme: AppTheme.darkThemePalette,
      initialRoute: AppWrapper.route,
      onGenerateRoute: AppRouter.onGenerateRoute,
    );
  }
}
