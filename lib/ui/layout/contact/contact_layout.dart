import 'package:flutter/material.dart';
import 'package:estebancoder/config/config.dart';
import 'package:estebancoder/providers/contact_form_provider.dart';
import 'package:estebancoder/services/alerts_service.dart';
import 'package:estebancoder/ui/layout/contact/photo_contact.dart';
import 'package:estebancoder/ui/layout/contact/widgets/contact_app_bar.dart';
import 'package:estebancoder/ui/layout/contact/widgets/contact_form.dart';
import 'package:estebancoder/ui/layout/contact/widgets/contact_title.dart';
import 'package:estebancoder/ui/widgets/custom_rounded_button.dart';
import 'package:provider/provider.dart';

class ContactLayout extends StatelessWidget {
  const ContactLayout({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final contactFormProvider = Provider.of<ContactFormProvider>(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.navy,
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  PhotoContact(pageColor: AppColors.mint),
                  const ContactTitle(
                      text:
                          'Thanks for taking the time to reach out.\nHow can I help you?'),
                  const SizedBox(height: 30),
                  const ContactForm(),
                  const SizedBox(height: 30),
                  CustomRounderButton(
                    text: 'Submit',
                    color: AppColors.navy,
                    onTap: () async {
                      if (!contactFormProvider.formKey.currentState!
                          .validate()) {
                        return;
                      }
                      AlertsService.loadingAlert(context);
                      final success = await contactFormProvider.sendMessage();
                      Navigator.pop(context);
                      if (success) {
                        contactAlert(
                          context,
                          "Your message has been received successfully.",
                          Icons.check,
                        );
                      } else {
                        contactAlert(
                          context,
                          "Sorry, there was an error sending your message.",
                          Icons.close,
                        );
                      }
                    },
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            const ContactAppBar()
          ],
        ),
      ),
    );
  }

  Future<void> contactAlert(
    BuildContext context,
    String text,
    IconData icon,
  ) async {
    await AlertsService.showDecoratedAlert(
      color: AppColors.mint,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              const Spacer(),
              MaterialButton(
                onPressed: () => Navigator.pop(context),
                color: AppColors.mint,
                child: const Text(
                  'OK',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 10,
              )
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
      context: context,
      icon: icon,
    );
  }
}
