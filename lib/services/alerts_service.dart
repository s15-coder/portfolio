import 'package:flutter/material.dart';
import 'package:portfolio/config/config.dart';

class AlertsService {
  static Future<void> showDecoratedAlert(
      {required BuildContext context,
      required Color color,
      required IconData icon,
      required Widget content,
      bool disissible = true}) async {
    final size = MediaQuery.of(context).size;
    await showDialog(
      context: context,
      barrierDismissible: disissible,
      builder: (_) => Dialog(
        child: Stack(
          children: [
            Container(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 30,
                ),
                width: size.width <= 400 ? size.width * .8 : 300,
                color: Colors.white,
                child: content),
            Transform.translate(
              offset: Offset(0, -30),
              child: Container(
                width: size.width <= 400 ? size.width * .8 : 300,
                height: 60,
                alignment: Alignment.center,
                child: ClipOval(
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      color: color,
                      border: Border.all(
                        color: Colors.white,
                        width: 5,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  static Future<void> loadingAlert(BuildContext context) async {
    final size = MediaQuery.of(context).size;
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => Dialog(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: 150,
          width: size.width <= 400 ? size.width * .8 : 300,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('Sending..'),
              LinearProgressIndicator(
                color: colors[0],
                backgroundColor: colors[0].withOpacity(.5),
              )
            ],
          ),
        ),
      ),
    );
  }
}
