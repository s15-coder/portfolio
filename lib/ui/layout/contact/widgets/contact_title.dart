import 'package:flutter/material.dart';

class ContactTitle extends StatelessWidget {
  const ContactTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: const Text(
        'Thanks for taking the time to reach out.\nHow can I help you?',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 35),
      ),
    );
  }
}
