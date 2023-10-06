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
              'Shrijan'.toUpperCase(),
              style: TextStyle(
                fontFamily: AppFonts.arges,
                fontWeight: FontWeight.w900,
                fontSize: 530.sp,
                height: 1.h,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Regmi'.toUpperCase(),
              style: TextStyle(
                fontFamily: AppFonts.arges,
                fontWeight: FontWeight.w900,
                fontSize: 530.sp,
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
      padding: const EdgeInsets.only(top: 21.0),
      child: SizedBox(
        width: 300.w,
        height: 420.sp,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "I'M A DYNAMIC MOBILE AND WEB DEVELOPER, FUELED BY NEPAL'S BOUNDLESS INSPIRATION.",
              style: TextStyle(
                fontFamily: AppFonts.ppMori,
                fontSize: 20.0,
                height: 0.9,
              ),
            ),
            const Text(
              "FOCUSING ON CREATING PURPOSEFUL USER INTERFACES    *",
              style: TextStyle(
                fontFamily: AppFonts.ppMori,
                fontSize: 20.0,
                height: 0.9,
              ),
            ),
            const Text(
              "*     WITH A HINT ON INTERACTIONS & ANIMATIONS",
              style: TextStyle(
                fontFamily: AppFonts.ppMori,
                fontSize: 20.0,
                height: 0.9,
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            const Text(
              "SCROLL TO EXPLORE‍",
              style: TextStyle(
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
