import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shrijan/app/app_router.dart';
import 'package:shrijan/app/app_theme.dart';
import 'package:shrijan/features/shared/views/screens/app_wrapper.dart';

class MyApp extends StatelessWidget {
  /// The starting widget of the application.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1512, 796),
      builder: (context, child) {
        return MaterialApp(
          title: '${'shrijan'.tr()} ${'regmi'.tr()}',
          debugShowCheckedModeBanner: false,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          theme: AppTheme.lightThemePalette,
          darkTheme: AppTheme.darkThemePalette,
          initialRoute: AppWrapper.route,
          onGenerateRoute: AppRouter.onGenerateRoute,
        );
      },
    );
  }
}
