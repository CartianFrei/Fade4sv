import 'package:fade4sv/features/login_screens/presentation/pages/phone_screen.dart';
import 'package:fade4sv/features/login_screens/presentation/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFAFBFD),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 150.0),
            Container(
              alignment: Alignment.center,
              height: 141.0,
              child: Image.asset(
                'assets/images/main_logo.png',
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              alignment: Alignment.center,
              child: const Text(
                'seti.inno',
                style: TextStyle(fontSize: 62.0, color: Color(0xFF205692)),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10.0),
            Container(
              alignment: Alignment.center,
              child: const Text(
                'Рационализатор',
                style: TextStyle(fontSize: 20.0, color: Color(0xFF2C2929)),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 182.0),
            ButtonWidget(
              function: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const PhoneScreen())),
              text: "Регистрация",
            ),
          ],
        ),
      ),
    );
  }
}
