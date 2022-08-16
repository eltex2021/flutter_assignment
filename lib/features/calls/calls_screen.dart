import 'package:flutter/material.dart';
import 'package:flutter_assignment/components/custom_app_bar.dart';

import '../../theme/app_colors.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.mainPink,
        appBar: CustomAppBar(),
        body: Center(child: Text('Calls')));
  }
}
