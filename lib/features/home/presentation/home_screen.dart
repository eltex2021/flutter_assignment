import 'package:flutter/material.dart';

import '../../../components/custom_app_bar.dart';
import '../../../theme/app_colors.dart';
import 'components/find_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainPink,
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: ListView(
            children: const [
              FindCardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}