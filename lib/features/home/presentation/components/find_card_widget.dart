
import 'package:flutter/material.dart';
import 'package:flutter_assignment/theme/app_texts.dart';

import '../../../../components/custom_button.dart';
import '../../../../theme/app_colors.dart';

class FindCardWidget extends StatefulWidget {
  const FindCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<FindCardWidget> createState() => _FindCardWidgetState();
}

class _FindCardWidgetState extends State<FindCardWidget> {
  final TextEditingController _textEditingController = TextEditingController();
  String? _value;
  String? _value2;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Column(
          children: [
            textFormWidget(width),
            buttonsWidget(),
            dropDownWidget(),
            smallDownWidget(),
          ],
        ),
      ),
    );
  }

  Widget textFormWidget(double width) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            print('клик');
          },
          child: const Icon(Icons.search),
          // child: SvgPicture.asset(
          //   AppIcons.searchSvg,
          //   Icons.search,
          //   color: AppColors.mainBlue,
          //   width: 24,
          // ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            SizedBox(
              height: 36,
              width: width - 122,
              child: TextFormField(
                controller: _textEditingController,
                keyboardType: TextInputType.name,
                maxLines: 1,
                textCapitalization: TextCapitalization.words,
                autocorrect: true,
                decoration: InputDecoration(
                  hintText: 'Country name',
                  hintStyle: AppTexts.bottomSelectedText.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.35),
                  contentPadding: const EdgeInsets.only(left: 12, bottom: 12),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buttonsWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: const [
          CustomButton(
            color: AppColors.mainBlue,
            text: 'SMS',
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomButton(
              color: AppColors.pureBlue,
              text: 'MMS',
            ),
          ),
          CustomButton(
            color: AppColors.mainBlue,
            text: 'Voice',
          ),
        ],
      ),
    );
  }

  Widget dropDownWidget() {
    return DropdownButtonFormField(
      icon: const Icon(Icons.keyboard_arrow_down),
      items: items,
      value: _value,
      onChanged: (String? value) {
        setState(() {
          _value = value;
        });
      },
      decoration: InputDecoration(
        //icon: const Icon(Icons.keyboard_arrow_down),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.mainBlue, width: 1),
          borderRadius: BorderRadius.circular(20),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.mainBlue, width: 1),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  Widget smallDownWidget() {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: DropdownButton(
          isExpanded: true,
          //icon: SizedBox.shrink(),
          icon: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(
                  color: AppColors.mainBlue,
                  width: 1,
                ),
              ),
              child: const Center(child: Icon(Icons.keyboard_arrow_down))),
          items: items2,
          value: _value2,
          onChanged: (String? value) {
            setState(() {
              _value2 = value;
            });
          },
          underline: const SizedBox(),
        ),
      ),
    );
  }

  List<DropdownMenuItem<String>> items = [
    const DropdownMenuItem<String>(
      value: '1',
      child: Text(
        'Landline or Mobile',
        style: AppTexts.buttonBlueText,
      ),
    ),
    const DropdownMenuItem<String>(
      value: '2',
      child: Text(
        'Only Landline',
        style: AppTexts.buttonBlueText,
      ),
    ),
    const DropdownMenuItem<String>(
      value: '3',
      child: Text(
        'Only Mobile',
        style: AppTexts.buttonBlueText,
      ),
    ),
  ];
  List<DropdownMenuItem<String>> items2 = [
    DropdownMenuItem<String>(
      value: '1',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Show numbers with verification',
            style: AppTexts.buttonBlueText.copyWith(
              fontSize: 14,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    ),
    DropdownMenuItem<String>(
      value: '2',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Show numbers without verification',
            style: AppTexts.buttonBlueText.copyWith(
              fontSize: 14,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    ),
  ];
}
