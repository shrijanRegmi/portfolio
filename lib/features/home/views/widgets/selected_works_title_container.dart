import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shrijan/app/app_colors.dart';
import 'package:shrijan/app/app_fonts.dart';
import 'package:sr_components/sr_components.dart';

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
          _titleBuilder(),
          Positioned(
            left: 0.0,
            bottom: 50.sp,
            child: _rangeBuilder(),
          ),
        ],
      ),
    );
  }

  Widget _titleBuilder() {
    return Column(
      children: [
        Row(
          children: [
            SRText.displayMedium(
              'selected'.tr().toUpperCase(),
              style: const TextStyle(
                color: AppColors.white,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SRText.displayMedium(
              'works'.tr().toUpperCase(),
              style: const TextStyle(
                color: AppColors.white,
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
