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
    final size = MediaQuery.of(context).size;
    return Form(
        autovalidateMode: AutovalidateMode.always,
        key: contactFormProvider.formKey,
        child: SizedBox(
          width: 700,
          child: Column(
            children: [
              if (size.width > 700)
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
              if (size.width <= 700) ...[
                CustomField(
                  label: 'Name',
                  validator: ContactFormProvider.validateName,
                  onChanged: (value) => contactFormProvider.name = value,
                ),
                CustomField(
                  label: 'Email',
                  validator: ContactFormProvider.validateEmail,
                  onChanged: (value) => contactFormProvider.email = value,
                ),
              ],
              CustomField(
                label: 'Message',
                maxLines: 9,
                minLines: 8,
                validator: ContactFormProvider.validateMessage,
                onChanged: (value) => contactFormProvider.message = value,
              )
            ],
          ),
        ));
  }
}
