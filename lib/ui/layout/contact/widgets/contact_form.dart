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

                    await NavigatorProvider.openProgressDialog(context);
                    final success = await contactFormProvider.sendMessage();
                    await NavigatorProvider.closeProgressDialog();

                    String message = success
                        ? 'Your message has been successfully received. Thank you!'
                        : "Message delivery failed. Please try again later.";
                    if (success) {
                      contactAlert(
                        context,
                        message,
                        Icons.check,
                      );
                    } else {
                      contactAlert(
                        context,
                        message,
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
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pop(context);
    });
    await showGradientDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              height: 1.5,
              fontSize: 20,
              fontWeight: FontWeight.w200,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
      context: context,
      icon: icon,
    );
  }
}
