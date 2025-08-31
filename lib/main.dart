import 'package:flutter/material.dart';
import 'package:online_leave_system/homepage.dart';

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
        // ColorScheme.fromSeed(
        //   seedColor: Colors.blue,
        //   brightness: Brightness.light
        // ),
       textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          displayMedium: TextStyle(fontSize: 26, fontWeight: FontWeight.w700),
          displaySmall: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),

          headlineLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          headlineMedium: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          headlineSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),

          bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
          bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
          bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),

          // titleLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          // titleMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),

          // labelSmall: TextStyle(fontSize: 10, fontWeight: FontWeight.normal),
        ),
        fontFamily: "NotoSans",
      ),
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

extension ExtraColors on ColorScheme {
  Color get pending =>  Color.fromRGBO(195,141,0,1);  
  Color get approve =>  Color.fromRGBO(17,177,157,1);  
  Color get reject =>  Color.fromRGBO(221,105,105,1); 
  Color get pendingIconBg =>  Color.fromRGBO(231,204,133,1);  
  Color get approveIconBg =>  Color.fromRGBO(70,226,207,1);
  Color get rejectIconBg =>  Color.fromRGBO(218,200,199,1);
  Color get pendingCardBg =>  Color.fromRGBO(250,238,210,1);  
  Color get approveCardBg =>  Color.fromRGBO(1220,239,235,1);  
  Color get rejectCardBg =>  Color.fromRGBO(240,226,227,1);  
  Color get grey =>  Color.fromRGBO(121,121,121,1);   
}

final customColorScheme = ColorScheme(
  primary: Color.fromRGBO(0, 180, 216, 1),
  onPrimary: Colors.white,
  secondary: Color.fromRGBO(202, 240, 248, 1),
  onSecondary: Colors.black,
  //   secondary: Color.fromRGBO(0, 119, 182, 1),
  // onSecondary: Colors.white,
  tertiary: Color.fromRGBO(144, 224, 239, 1),
  surface: Colors.white,
  onSurface: Colors.black,
  error: Colors.red,
  onError: Colors.white,
  brightness: Brightness.light
);
