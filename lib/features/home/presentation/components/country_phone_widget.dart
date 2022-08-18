import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/theme/app_texts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../contacts/domain/bloc/contacts_bloc.dart';
import '../../../contacts/data/models/contact.dart';

class CountryPhoneWidget extends StatelessWidget {
  const CountryPhoneWidget(
      {Key? key, required this.countryName, required this.image})
      : super(key: key);

  final String countryName;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          CountryNameWidget(
            countryName: countryName,
            image: image,
          ),
          PhoneNumbersWidget(
            countryName: countryName,
          ),
        ],
      ),
    );
  }
}

class CountryNameWidget extends StatelessWidget {
  const CountryNameWidget({
    Key? key,
    required this.countryName,
    required this.image,
  }) : super(key: key);

  final String countryName;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Image.asset(
            image,
            fit: BoxFit.contain,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            countryName,
            style: AppTexts.countryText,
          ),
        ],
      ),
    );
  }
}

class PhoneNumbersWidget extends StatelessWidget {
  const PhoneNumbersWidget({
    Key? key,
    required this.countryName,
  }) : super(key: key);

  final String countryName;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactsBloc, ContactsState>(
      builder: (context, state) {
        return state.when(initial: () {
          return initialWidget(context);
        }, received: (List<Contact> usaList, List<Contact> gbList) {
          return Card(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/phone.png',
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    usaList[index].phone,
                                    style: AppTexts.countryText,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    usaList[index].region,
                                    style: AppTexts.countryText.copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/s.png',
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Image.asset(
                                'assets/images/v.png',
                                fit: BoxFit.contain,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                )),
          );
        });
      },
    );
  }

  initialWidget(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
