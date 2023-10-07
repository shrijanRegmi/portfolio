import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shrijan/app/app_fonts.dart';

class IntroContainer extends ConsumerStatefulWidget {
  const IntroContainer({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _IntroContainerState();
}

class _IntroContainerState extends ConsumerState<IntroContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Stack(
        children: [
          _nameBuilder(),
          Positioned(
            right: 0.0,
            child: _introBuilder(),
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
              'regmi'.tr().toUpperCase(),
              style: TextStyle(
                fontFamily: AppFonts.arges,
                fontWeight: FontWeight.w900,
                fontSize: 700.sp,
                height: 1.h,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'shrijan'.tr().toUpperCase(),
              style: TextStyle(
                fontFamily: AppFonts.arges,
                fontWeight: FontWeight.w900,
                fontSize: 700.sp,
                height: 1.h,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _introBuilder() {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: SizedBox(
        width: 300.w,
        height: 555.sp,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "intro_text1".tr().toUpperCase(),
              style: const TextStyle(
                fontFamily: AppFonts.ppMori,
                fontSize: 20.0,
                height: 0.9,
              ),
            ),
            Text(
              "${'intro_text2'.tr().toUpperCase()}    *",
              style: const TextStyle(
                fontFamily: AppFonts.ppMori,
                fontSize: 20.0,
                height: 0.9,
              ),
            ),
            Text(
              "*     ${'intro_text3'.tr().toUpperCase()}",
              style: const TextStyle(
                fontFamily: AppFonts.ppMori,
                fontSize: 20.0,
                height: 0.9,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "scroll_to_explore".tr().toUpperCase(),
              style: const TextStyle(
                fontFamily: AppFonts.ppMori,
                decoration: TextDecoration.underline,
                fontSize: 20.0,
                height: 0.9,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
