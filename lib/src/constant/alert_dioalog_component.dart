import 'package:flutter/material.dart';

class AlertDialogComponent {
  static Future showDialogComponent({
    required AlertDialog alertDialog,
    required BuildContext context,
  }) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) {
        return alertDialog;
      },
    );
  }
}
