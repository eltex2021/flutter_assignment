import 'package:flutter/material.dart';

import '../../components/custom_app_bar.dart';
import '../../theme/app_colors.dart';

class ContactsScreen extends StatelessWidget{
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: AppColors.mainPink,
        appBar: CustomAppBar(),
        body: Center(child: Text('Contacts')));
  }
}
