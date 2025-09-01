import 'package:flutter/material.dart';
import 'package:online_leave_system/screens/bottom_nav.dart';
import 'package:online_leave_system/theme/color_scheme.dart';
import 'package:online_leave_system/theme/text_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: customColorScheme,      
        textTheme: customTextTheme,
        fontFamily: "NotoSans",
      ),
      home: const BottomNav(),
    );
  }
}

