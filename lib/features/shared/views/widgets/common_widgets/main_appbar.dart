import 'package:flutter/material.dart';
import 'package:shrijan/app/app_colors.dart';
import 'package:shrijan/app/app_fonts.dart';

class MainAppbar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  const MainAppbar({
    super.key,
    this.height = kToolbarHeight,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: height,
      title: const Text('SR'),
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

  @override
  Size get preferredSize => Size.fromHeight(height);

  Widget _menuBuilder() {
    return Padding(
      padding: const EdgeInsets.only(right: 40),
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
    );
  }
}
