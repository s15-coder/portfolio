import 'package:estebancoder/config/config.dart';
import 'package:estebancoder/services/alerts_service.dart';
import 'package:estebancoder/ui/widgets/custom_rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:estebancoder/providers/contact_form_provider.dart';
import 'package:estebancoder/ui/layout/contact/custom_field.dart';
import 'package:provider/provider.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({Key? key}) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  @override
  Widget build(BuildContext context) {
    final contactFormProvider =
        Provider.of<ContactFormProvider>(context, listen: false);
    return LayoutBuilder(builder: (_, BoxConstraints contrainsts) {
      return Form(
          key: contactFormProvider.formKey,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: Column(
              children: [
                if (contrainsts.maxWidth > 700)
                  Row(
                    children: [
                      Expanded(
                          child: CustomField(
                        label: 'Name',
                        validator: ContactFormProvider.validateName,
                        onChanged: (value) => contactFormProvider.name = value,
                      )),
                      Expanded(
                          child: CustomField(
                        label: 'Email',
                        validator: ContactFormProvider.validateEmail,
                        onChanged: (value) => contactFormProvider.email = value,
                      )),
                    ],
                  ),
                if (contrainsts.maxWidth <= 700) ...[
                  CustomField(
                    label: 'Name',
                    maxLines: 1,
                    validator: ContactFormProvider.validateName,
                    onChanged: (value) => contactFormProvider.name = value,
                  ),
                  CustomField(
                    label: 'Email',
                    maxLines: 1,
                    validator: ContactFormProvider.validateEmail,
                    onChanged: (value) => contactFormProvider.email = value,
                  ),
                ],
                CustomField(
                  label: 'Message',
                  maxLines: 5,
                  minLines: 3,
                  validator: ContactFormProvider.validateMessage,
                  onChanged: (value) => contactFormProvider.message = value,
                ),
                const SizedBox(height: 30),
                CustomRounderButton(
                  text: 'Submit',
                  color: AppColors.navy,
                  onTap: () async {
                    if (!contactFormProvider.formKey.currentState!.validate()) {
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
              ],
            ),
          ));
    });
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
