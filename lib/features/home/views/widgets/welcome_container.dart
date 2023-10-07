import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shrijan/app/app_colors.dart';
import 'package:shrijan/features/shared/views/widgets/common_widgets/animator.dart';
import 'package:sr_components/sr_components.dart';

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
          SRText.titleMedium(
            'shrijan'.tr(),
            style: const TextStyle(
              color: AppColors.white,
            ),
          ),
          SRText.titleMedium(
            'regmi'.tr().toUpperCase(),
            style: const TextStyle(
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _welcomeTextBuilder() {
    return Animator.boxSlide(
      beginOffset: Offset(0.0, 300.0.spMin),
      endOffset: Offset(0.0, -302.spMin),
      boxHeight: 302.spMin,
      delay: const Duration(milliseconds: 1000),
      duration: const Duration(milliseconds: 2400),
      curve: Curves.slowMiddle,
      isEnable: true,
      child: Center(
        child: SRText.displayMedium(
          '${'welcome'.tr()}!'.toUpperCase(),
          style: const TextStyle(
            color: AppColors.white,
          ),
        ),
      ),
    );
  }

  Widget _shortIntroSectionBuilder() {
    return Animator.boxSlide(
      beginOffset: const Offset(0.0, 18.0),
      endOffset: const Offset(0.0, 0.0),
      duration: const Duration(milliseconds: 2000),
      curve: Curves.easeInOutCubicEmphasized,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SRText.titleMedium(
            'developer'.tr(),
            style: const TextStyle(
              color: AppColors.white,
            ),
          ),
          SRText.titleMedium(
            'flutter_expert'.tr(),
            style: const TextStyle(
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
