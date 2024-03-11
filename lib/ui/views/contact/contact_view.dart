import 'package:estebancoder/config/config.dart';
import 'package:estebancoder/config/styles/styles.dart';
import 'package:estebancoder/ui/layout/contact/widgets/contact_form.dart';
import 'package:estebancoder/ui/views/contact/widgets/contact_details.dart';
import 'package:flutter/material.dart';

class ContactView extends StatelessWidget {
  const ContactView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isMobileWidth = DeviceWidthChecker.isMobileWidth(context);
    return DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(
              UILayout.xxlarge,
            ),
            topRight: Radius.circular(
              UILayout.xxlarge,
            ),
          ),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.purple,
              AppColors.navy,
            ],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: UILayout.medium),
            Text(
              'CONTACT',
              style: TextStyle(
                color: Colors.white,
                fontSize: isMobileWidth ? 28 : 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            isMobileWidth
                ? const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ContactDetails(),
                      ContactForm(),
                    ],
                  )
                : Padding(
                    padding: UIPadding.padding_24,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const ContactDetails(),
                        SizedBox(
                          width: 400,
                          child: DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(UILayout.large),
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    AppColors.purple,
                                    AppColors.navy,
                                  ],
                                ),
                              ),
                              child: const Padding(
                                padding: UIPadding.paddingV24,
                                child: Column(
                                  children: [
                                    ContactForm(),
                                  ],
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
          ],
        ));
  }
}
