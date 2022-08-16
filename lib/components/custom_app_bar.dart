import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 56,
      backgroundColor: AppColors.mainPink,
      elevation: 0,
      leading: Container(
        margin: const EdgeInsets.only(left: 24, top: 12),
        child: const CircleAvatar(
          radius: 24,
          backgroundImage: AssetImage(
            'assets/images/ava.png',
          ),
        ),
      ),
      leadingWidth: 78,
      actions: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    print('клик');
                  },
                  child: const Icon(
                    Icons.bar_chart,
                    color: AppColors.pureBlue,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.mail_outline,
                    color: AppColors.pureBlue,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.add_alert_outlined,
                    color: AppColors.pureBlue,
                  ),
                ),
                const SizedBox(
                  width: 30,
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
