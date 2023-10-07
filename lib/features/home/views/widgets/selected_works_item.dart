import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shrijan/app/app_colors.dart';
import 'package:shrijan/app/app_fonts.dart';
import 'package:shrijan/features/shared/models/project_model.dart';
import 'package:shrijan/features/shared/views/widgets/common_widgets/string_shuffler.dart';
import 'package:sr_components/sr_components.dart';

class SelectedWorksItem extends ConsumerStatefulWidget {
  const SelectedWorksItem({
    super.key,
    required this.project,
    this.index = -1,
    this.totalProjects = 0,
  });

  /// The project to display in this item.
  final Project project;

  /// The index of the project.
  final int index;

  /// The length of the projects list.
  final int totalProjects;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SelectedWorksItemState();
}

class _SelectedWorksItemState extends ConsumerState<SelectedWorksItem> {
  final _imageContainerHeight = 325.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().screenWidth,
      height: ScreenUtil().screenHeight,
      decoration: BoxDecoration(
        color: widget.project.themeColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Stack(
          children: [
            Positioned(
              right: 0.0,
              bottom: (_imageContainerHeight - 140).w,
              child: _positionBuilder(),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _headerBuilder(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _titleBuilder(),
                    _imageBuilder(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _headerBuilder() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        SRText.titleLarge(
          'selected'.tr().toUpperCase(),
          style: TextStyle(
            fontSize: 30.sp,
            color: AppColors.white,
            fontFamily: AppFonts.arges,
            fontWeight: FontWeight.w900,
          ),
        ),
        if (widget.index != -1 && widget.totalProjects != 0)
          SRText.titleMedium(
            '${(widget.index + 1).toString().padLeft(2, '0')}  -----  ${(widget.totalProjects).toString().padLeft(2, '0')}',
            style: const TextStyle(
              color: AppColors.white,
            ),
          ),
        SRText.titleMedium(
          'works'.tr().toUpperCase(),
          style: TextStyle(
            fontSize: 30.sp,
            color: AppColors.white,
            fontFamily: AppFonts.arges,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }

  Widget _titleBuilder() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: SRText.titleSmall(
            widget.project.tags.join(' / ').toUpperCase(),
            style: const TextStyle(
              color: AppColors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        SRText.displaySmall(
          widget.project.title?.toUpperCase(),
          style: const TextStyle(
            color: AppColors.white,
          ),
        ),
      ],
    );
  }

  Widget _imageBuilder() {
    return Container(
      width: 425.w,
      height: _imageContainerHeight.w,
      decoration: BoxDecoration(
        color: AppColors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: StringShuffler(
        strings: widget.project.images,
        inSequence: true,
        shuffleDuration: const Duration(milliseconds: 2000),
        builder: (context, image) {
          return CachedNetworkImage(
            imageUrl: image,
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }

  Widget _positionBuilder() {
    if (widget.index == -1) return const SizedBox();

    return SRText.displaySmall(
      '${widget.index + 1}'.padLeft(2, '0'),
      style: TextStyle(
        color: AppColors.white.withOpacity(0.2),
      ),
    );
  }
}
