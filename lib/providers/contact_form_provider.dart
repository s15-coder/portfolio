import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:portfolio/services/api_service.dart';

class ContactFormProvider extends ChangeNotifier {
  String name = '';
  String email = '';
  String message = '';
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

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

  Future<bool> sendMessage() async {
    try {
      await ApiService.sendMessage(email, message, name);
      formKey.currentState!.reset();
      return true;
    } catch (e) {
      return false;
    }
  }
}
