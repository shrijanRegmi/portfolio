import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shrijan/app/app_fonts.dart';
import 'package:sr_components/sr_components.dart';

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
            right: 40.0,
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
            SRText.displayLarge(
              'regmi'.tr().toUpperCase(),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SRText.displayLarge(
              'shrijan'.tr().toUpperCase(),
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
        height: 525.sp,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SRText.titleLarge(
              "intro_text1".tr().toUpperCase(),
              style: const TextStyle(
                fontFamily: AppFonts.ppMori,
                fontSize: 20.0,
                height: 0.9,
              ),
            ),
            SRText.titleLarge(
              "${'intro_text2'.tr().toUpperCase()}    *",
              style: const TextStyle(
                fontFamily: AppFonts.ppMori,
                fontSize: 20.0,
                height: 0.9,
              ),
            ),
            SRText.titleLarge(
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
            SRText.titleLarge(
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
