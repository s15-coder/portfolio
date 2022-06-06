import 'package:flutter/material.dart';
import 'package:portfolio/providers/contact_form_provider.dart';
import 'package:portfolio/ui/layout/contact/custom_field.dart';

class ContactForm extends StatelessWidget {
  ContactForm({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Form(
        autovalidateMode: AutovalidateMode.always,
        key: _formKey,
        child: Container(
          width: 700,
          child: Column(
            children: [
              if (size.width > 700)
                Row(
                  children: const [
                    Expanded(
                        child: CustomField(
                      label: 'Name',
                      validator: ContactFormProvider.validateName,
                    )),
                    Expanded(
                        child: CustomField(
                      label: 'Email',
                      validator: ContactFormProvider.validateEmail,
                    )),
                  ],
                ),
              if (size.width <= 700) ...[
                const CustomField(
                  label: 'Name',
                  validator: ContactFormProvider.validateName,
                ),
                const CustomField(
                  label: 'Email',
                  validator: ContactFormProvider.validateEmail,
                ),
              ],
              const CustomField(
                label: 'Message',
                maxLines: 9,
                minLines: 8,
                validator: ContactFormProvider.validateMessage,
              )
            ],
          ),
        ));
  }
}
