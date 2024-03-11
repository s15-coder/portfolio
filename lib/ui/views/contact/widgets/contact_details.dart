import 'package:estebancoder/ui/views/contact/widgets/contact_item.dart';
import 'package:flutter/material.dart';

class ContactDetails extends StatelessWidget {
  const ContactDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ContactItem(
          icon: Icons.phone_outlined,
          text: '+1 6723553212',
        ),
        ContactItem(
          icon: Icons.email_outlined,
          text: 'serestebanoo@gmail.com',
        ),
        ContactItem(
          icon: Icons.location_on_outlined,
          text: 'British Columbia, Canada.',
        ),
      ],
    );
  }
}
