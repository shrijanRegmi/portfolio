import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shrijan/features/home/views/widgets/intro_contrainer.dart';
import 'package:shrijan/features/home/views/widgets/selected_works_title_container.dart';
import 'package:shrijan/features/home/views/widgets/welcome_container.dart';
import 'package:shrijan/features/shared/views/widgets/common_widgets/main_appbar.dart';
import 'package:sr_components/sr_components.dart';

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
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              _appbarBuilder(),
              const IntroContainer().toSliverBox(),
              const SizedBox(height: 200).toSliverBox(),
              const SelectedWorksTitleContainer().toSliverBox(),
            ],
          ),
          const WelcomeContainer(),
        ],
      ),
    );
  }

  Widget _appbarBuilder() {
    return SliverAppBar(
      elevation: 0.0,
      flexibleSpace: MainAppbar(
        height: 100.h,
      ),
    );
  }
}
