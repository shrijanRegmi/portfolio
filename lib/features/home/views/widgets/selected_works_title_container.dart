import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shrijan/app/app_colors.dart';
import 'package:shrijan/app/app_fonts.dart';

class SelectedWorksTitleContainer extends ConsumerStatefulWidget {
  const SelectedWorksTitleContainer({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SelectedWorksTitleContainerState();
}

class _SelectedWorksTitleContainerState
    extends ConsumerState<SelectedWorksTitleContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().screenWidth,
      height: ScreenUtil().screenHeight,
      padding: const EdgeInsets.all(40.0),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40.r),
          topRight: Radius.circular(40.r),
        ),
      ),
      child: Stack(
        children: [
          _nameBuilder(),
          Positioned(
            left: 0.0,
            bottom: 40.sp,
            child: _rangeBuilder(),
          ),
        ],
      ),
    );
  }

  Widget _nameBuilder() {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'selected'.tr().toUpperCase(),
              style: TextStyle(
                fontFamily: AppFonts.arges,
                fontWeight: FontWeight.w900,
                color: AppColors.white,
                fontSize: 355.sp,
                height: 1.sp,
                letterSpacing: 5.sp,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'works'.tr().toUpperCase(),
              style: TextStyle(
                fontFamily: AppFonts.arges,
                fontWeight: FontWeight.w900,
                color: AppColors.white,
                fontSize: 355.sp,
                height: 1.h,
                letterSpacing: 5.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _rangeBuilder() {
    return Row(
      children: [
        Text(
          '2019 ----------------------------------- 2022'.toUpperCase(),
          style: TextStyle(
            fontFamily: AppFonts.ppMori,
            fontWeight: FontWeight.w400,
            color: AppColors.white,
            fontSize: 18,
            height: 1.h,
          ),
        ),
      ],
    );
  }
}
