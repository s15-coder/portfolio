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
          autovalidateMode: AutovalidateMode.onUserInteraction,
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
                )
              ],
            ),
          ));
    });
  }
}
