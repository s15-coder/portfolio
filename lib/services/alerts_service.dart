import 'package:estebancoder/config/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:estebancoder/config/config.dart';
import 'package:progress_dialog_null_safe/progress_dialog_null_safe.dart';

Future<void> showGradientDialog({
  required BuildContext context,
  required IconData icon,
  required Widget content,
  bool disissible = true,
}) async {
  final size = MediaQuery.of(context).size;
  await showDialog(
    context: context,
    barrierDismissible: disissible,
    builder: (_) => Dialog(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(UILayout.large),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.purple,
                  AppColors.navy,
                ],
              ),
            ),
            padding: const EdgeInsets.only(
              left: 15,
              right: 15,
              top: 30,
            ),
            width: size.width <= 400 ? size.width * .8 : 300,
            child: content,
          ),
          Transform.translate(
            offset: const Offset(0, -30),
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
                    borderRadius: BorderRadius.circular(UILayout.large),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        AppColors.purple,
                        AppColors.navy,
                      ],
                    ),
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

class NavigatorProvider {
  NavigatorProvider();
  static ProgressDialog? _progressDialog;

  static Future<void> openProgressDialog(BuildContext context) async {
    _progressDialog = ProgressDialog(
      context,
      isDismissible: false,
      customBody: const Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Center(
            child: Padding(
              padding: UIPadding.padding_16,
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
    _progressDialog!.style(
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
    await _progressDialog!.show();
  }

  static Future<void> closeProgressDialog() async {
    await _progressDialog!.hide();
  }
}
