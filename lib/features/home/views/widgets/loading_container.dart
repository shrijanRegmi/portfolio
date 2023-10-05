import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shrijan/app/app_colors.dart';
import 'package:shrijan/app/app_fonts.dart';

class LoadingContainer extends ConsumerStatefulWidget {
  const LoadingContainer({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _LoadingContainerState();
}

class _LoadingContainerState extends ConsumerState<LoadingContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }

  Widget _nameSectionBuilder() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Shrijan',
          style: TextStyle(
            fontSize: 16,
            color: AppColors.white,
            fontFamily: AppFonts.ppMori,
          ),
        ),
        Text(
          'Regmi'.toUpperCase(),
          style: const TextStyle(
            fontSize: 16,
            color: AppColors.white,
            fontFamily: AppFonts.ppMori,
          ),
        ),
      ],
    );
  }

  Widget _welcomeTextBuilder() {
    return Text(
      'Welcome!'.toUpperCase(),
      style: TextStyle(
        fontSize: 250.spMin,
        fontFamily: AppFonts.arges,
        color: AppColors.white,
        fontWeight: FontWeight.w900,
        letterSpacing: 1.w,
      ),
    );
  }

  Widget _shortIntroSectionBuilder() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Developer',
          style: TextStyle(
            fontSize: 16,
            color: AppColors.white,
            fontFamily: AppFonts.ppMori,
          ),
        ),
        Text(
          'Flutter Expert',
          style: TextStyle(
            fontSize: 16,
            color: AppColors.white,
            fontFamily: AppFonts.ppMori,
          ),
        ),
      ],
    );
  }
}
