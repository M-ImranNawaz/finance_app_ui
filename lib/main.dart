import 'package:finance_app/constants.dart';
import 'package:flutter/material.dart';
import '../views/views.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: const MaterialColor(kPCValue, {
          50: Color(kPCValue),
          100: Color(kPCValue),
          200: Color(kPCValue),
          300: Color(kPCValue),
          400: Color(kPCValue),
          500: Color(kPCValue),
          600: Color(kPCValue),
          700: Color(kPCValue),
          800: Color(kPCValue),
          900: Color(kPCValue),
        }),
      ),
      home: const UserPage(),
    );
  }
}
