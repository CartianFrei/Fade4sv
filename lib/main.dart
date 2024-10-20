import 'package:fade4sv/features/login_screens/presentation/pages/registration_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Seti Inno',
      theme: ThemeData(useMaterial3: true, fontFamily: 'ABeeZee'),
      home: const RegistrationScreen(),
    );
  }
}
