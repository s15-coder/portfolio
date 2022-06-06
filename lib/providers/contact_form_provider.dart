import 'package:email_validator/email_validator.dart';

class ContactFormProvider {
  String name = '';
  String password = '';
  String message = '';

  static String? validateMessage(String? value) {
    if (value == null || value.length > 5) return null;
    return 'Message is too short';
  }

  static String? validateName(String? value) {
    if (value == null || value.length > 5) return null;
    return 'Name is too short';
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) return "Email is not valid";
    final bool isValid = EmailValidator.validate(value);
    if (isValid) return null;
    return "Email \"$value\" is not valid";
  }
}
