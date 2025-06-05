import 'package:flutter/material.dart';
import 'package:openapi_demo_frontend/src/core/theme/dimens.dart';
import 'package:openapi_demo_frontend/src/shared/extensions/context_extensions.dart';

class InformativeDialog {
  static Future<void> show({
    required BuildContext context,
    required String title,
    required String message,
    String? buttonText,
    VoidCallback? onConfirm,
  }) {
    return showDialog(
      context: context,
      barrierDismissible: true,
      useRootNavigator: false,
      builder: (context) {
        return AlertDialog.adaptive(
          surfaceTintColor: Colors.transparent,
          backgroundColor: context.colorScheme.surface,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimens.radius),
          ),
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                onConfirm?.call();
              },
              child: Text(buttonText ?? 'OK'),
            ),
          ],
        );
      },
    );
  }
}
