import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shrijan/features/home/views/widgets/intro_contrainer.dart';
import 'package:shrijan/features/home/views/widgets/selected_works_title_container.dart';
import 'package:shrijan/features/home/views/widgets/welcome_container.dart';
import 'package:shrijan/features/shared/views/widgets/common_widgets/main_appbar.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  static const route = '/home';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  IntroContainer(),
                  SizedBox(
                    height: 200,
                  ),
                  SelectedWorksTitleContainer(),
                ],
              ),
            ),
          ),
          WelcomeContainer(),
        ],
      ),
    );
  }

  Widget _appbarBuilder() {
    return MainAppbar(
      height: 100.h,
    );
  }
}
