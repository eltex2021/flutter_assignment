import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.mainPink,
        body: Center(child: Text('Calls')));
  }
}
