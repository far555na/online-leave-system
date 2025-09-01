import 'package:flutter/material.dart';

extension ExtraColors on ColorScheme {
  Color get pending => const Color.fromRGBO(195, 141, 0, 1);
  Color get approve => const Color.fromRGBO(17, 177, 157, 1);
  Color get reject => const Color.fromRGBO(221, 105, 105, 1);

  Color get pendingIconBg => const Color.fromRGBO(231, 204, 133, 1);
  Color get approveIconBg => const Color.fromRGBO(70, 226, 207, 1);
  Color get rejectIconBg => const Color.fromRGBO(218, 200, 199, 1);

  Color get pendingCardBg => const Color.fromRGBO(250, 238, 210, 1);
  Color get approveCardBg => const Color.fromRGBO(220, 239, 235, 1);
  Color get rejectCardBg => const Color.fromRGBO(240, 226, 227, 1);

  Color get grey => const Color.fromRGBO(121, 121, 121, 1);
}

final customColorScheme = const ColorScheme(
  primary: Color.fromRGBO(0, 180, 216, 1),
  onPrimary: Colors.white,
  secondary: Color.fromRGBO(202, 240, 248, 1),
  onSecondary: Colors.black,
  tertiary: Color.fromRGBO(144, 224, 239, 1),
  surface: Colors.white,
  onSurface: Colors.black,
  error: Colors.red,
  onError: Colors.white,
  brightness: Brightness.light,
);
