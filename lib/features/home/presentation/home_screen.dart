import 'package:flutter/material.dart';

import '../../../theme/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.mainPink,
      appBar: AppBar(
        backgroundColor: AppColors.mainPink,
        elevation: 0,
        leading: const Icon(Icons.account_circle_outlined, size: 48,),
        leadingWidth: 78,
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 32,
                    width: 32,
                    child: IconButton(
                      //splashRadius: 24,
                      icon: const Icon(

                        Icons.mail_outline,
                        size: 24,
                        color: AppColors.pureBlue,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    height: 32,
                    width: 32,
                    child: IconButton(
                      //splashRadius: 24,
                      icon: const Icon(
                        Icons.mail_outline,
                        size: 24,
                        color: AppColors.pureBlue,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    height: 32,
                    width: 32,
                    child: IconButton(
                      //splashRadius: 24,
                      icon: const Icon(
                        Icons.mail_outline,
                        size: 24,
                        color: AppColors.pureBlue,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(width: 30,)
                ],
              ),
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: ListView(
            children: const [
              Text('shdbshjdb'),
            ],
          ),
        ),
      ),
    );
  }
}
