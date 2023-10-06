import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shrijan/app/app_colors.dart';
import 'package:shrijan/app/app_fonts.dart';
import 'package:shrijan/features/shared/views/widgets/common_widgets/animator.dart';

class WelcomeContainer extends ConsumerStatefulWidget {
  const WelcomeContainer({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _WelcomeContainerState();
}

class _WelcomeContainerState extends ConsumerState<WelcomeContainer>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Animator.slide(
      isEnable: true,
      beginOffset: const Offset(0.0, 0.0),
      endOffset: const Offset(0.0, -1.0),
      duration: const Duration(milliseconds: 2000),
      delay: const Duration(milliseconds: 3000),
      curve: Curves.easeInOutCubicEmphasized,
      child: Container(
        width: ScreenUtil().screenWidth,
        height: ScreenUtil().screenHeight,
        decoration: const BoxDecoration(
          color: AppColors.primary,
        ),
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _nameSectionBuilder(),
              _welcomeTextBuilder(),
              _shortIntroSectionBuilder(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _nameSectionBuilder() {
    return Animator.boxSlide(
      beginOffset: const Offset(0.0, 18.0),
      endOffset: const Offset(0.0, 0.0),
      duration: const Duration(milliseconds: 2000),
      curve: Curves.easeInOutCubicEmphasized,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Shrijan',
            style: TextStyle(
              fontSize: 18.0,
              color: AppColors.white,
              fontFamily: AppFonts.ppMori,
            ),
          ),
          Text(
            'Regmi'.toUpperCase(),
            style: const TextStyle(
              fontSize: 18.0,
              color: AppColors.white,
              fontFamily: AppFonts.ppMori,
            ),
          ),
        ],
      ),
    );
  }

  Widget _welcomeTextBuilder() {
    return Animator.boxSlide(
      beginOffset: Offset(0.0, 300.spMin),
      endOffset: Offset(0.0, -302.spMin),
      boxHeight: 302.spMin,
      delay: const Duration(milliseconds: 1000),
      duration: const Duration(milliseconds: 2400),
      curve: Curves.slowMiddle,
      child: Center(
        child: Text(
          'Welcome!'.toUpperCase(),
          style: TextStyle(
            fontSize: 300.spMin,
            fontFamily: AppFonts.arges,
            color: AppColors.white,
            fontWeight: FontWeight.w900,
            letterSpacing: 1.w,
          ),
        ),
      ),
    );
  }

  Widget _shortIntroSectionBuilder() {
    return const Animator.boxSlide(
      beginOffset: Offset(0.0, 18.0),
      endOffset: Offset(0.0, 0.0),
      duration: Duration(milliseconds: 2000),
      curve: Curves.easeInOutCubicEmphasized,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Developer',
            style: TextStyle(
              fontSize: 18.0,
              color: AppColors.white,
              fontFamily: AppFonts.ppMori,
            ),
          ),
          Text(
            'Flutter Expert',
            style: TextStyle(
              fontSize: 18.0,
              color: AppColors.white,
              fontFamily: AppFonts.ppMori,
            ),
          ),
        ],
      ),
    );
  }
}
