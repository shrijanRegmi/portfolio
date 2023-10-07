import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shrijan/app/app_colors.dart';
import 'package:shrijan/app/app_fonts.dart';
import 'package:shrijan/features/shared/views/widgets/common_widgets/animator.dart';

class MainAppbar extends ConsumerStatefulWidget implements PreferredSizeWidget {
  final double height;

  const MainAppbar({
    super.key,
    this.height = kToolbarHeight,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  ConsumerState<MainAppbar> createState() => _MainAppbarState();
}

class _MainAppbarState extends ConsumerState<MainAppbar>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 300),
  );
  late final Animation<double> _animation = Tween<double>(
    begin: 0.0,
    end: 48.0,
  ).animate(
    CurvedAnimation(
      parent: _animationController,
      curve: Curves.ease,
    ),
  );

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: widget.height,
      title: _animtedTitleBuilder(),
      elevation: 0.0,
      leading: const SizedBox(width: 0.0),
      leadingWidth: 20,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      titleTextStyle: const TextStyle(
        fontFamily: AppFonts.arges,
        fontWeight: FontWeight.w900,
        color: AppColors.textColor,
        fontSize: 30,
        letterSpacing: 0.5,
      ),
      centerTitle: false,
      actions: [_menuBuilder()],
    );
  }

  Widget _animtedTitleBuilder() {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        final isCompleted =
            _animationController.status == AnimationStatus.completed;
        return Container(
          constraints: const BoxConstraints(
            maxWidth: 106.0,
          ),
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            onEnter: (_) {
              _animationController.forward();
            },
            onExit: (_) {
              _animationController.reverse();
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('S'),
                Container(
                  width: _animation.value,
                  constraints: const BoxConstraints(
                    maxWidth: 48.0,
                  ),
                  child: !isCompleted
                      ? null
                      : const Animator.boxSlide(
                          beginOffset: Offset(0.0, 36.0),
                          endOffset: Offset(0.0, 0.0),
                          duration: Duration(milliseconds: 300),
                          child: Text('hrijan'),
                        ),
                ),
                const Text('R'),
                Container(
                  width: _animation.value,
                  constraints: const BoxConstraints(
                    maxWidth: 38.0,
                  ),
                  child: !isCompleted
                      ? null
                      : const Animator.boxSlide(
                          beginOffset: Offset(0.0, 36.0),
                          endOffset: Offset(0.0, 0.0),
                          duration: Duration(milliseconds: 300),
                          child: Text('egmi'),
                        ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _menuBuilder() {
    return Padding(
      padding: const EdgeInsets.only(right: 40),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 36,
              height: 2,
              decoration: const BoxDecoration(
                color: AppColors.primary,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: 36,
              height: 2,
              decoration: const BoxDecoration(
                color: AppColors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
