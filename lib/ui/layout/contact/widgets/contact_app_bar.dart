import 'package:flutter/material.dart';

class ContactAppBar extends StatelessWidget {
  const ContactAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: const EdgeInsets.only(top: 10),
      height: 50,
      child: Row(
        children: [
          Container(
              margin: const EdgeInsets.only(left: 10, top: 5),
              child: Image.asset('app_icon.jpg')),
          const Spacer(),
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
            icon: const Icon(
              Icons.close,
              color: Colors.white,
              size: 30,
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
