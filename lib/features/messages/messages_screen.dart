import 'package:flutter/material.dart';

import '../../components/custom_app_bar.dart';
import '../../theme/app_colors.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: AppColors.mainPink,
        appBar: CustomAppBar(),
        body: Center(child: Text('Messages')));
  }
}
