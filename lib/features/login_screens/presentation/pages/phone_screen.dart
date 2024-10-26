import 'package:fade4sv/features/login_screens/presentation/pages/verification_screen.dart';
import 'package:fade4sv/features/login_screens/presentation/widgets/button_widget.dart';
import 'package:fade4sv/features/login_screens/presentation/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  final TextEditingController controller = TextEditingController();
  final FocusNode focusNode = FocusNode();

  void rebuild() => setState(() {});

  @override
  void initState() {
    super.initState();
    focusNode.addListener(rebuild);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFBFD),
      body: Column(
        children: [
          const SizedBox(height: 272.0),
          TextFieldWidget(
              focusNode: focusNode,
              hintText: 'Телефон',
              keyboardType: TextInputType.phone,
              maxInputCount: 18,
              inputFormatter: [
                MaskTextInputFormatter(
                    mask: '+# (###) ###-##-##',
                    filter: {"#": RegExp(r'[0-9]')},
                    type: MaskAutoCompletionType.lazy)
              ],
              controller: controller),
          const SizedBox(height: 17.0),
          ButtonWidget(
              function: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const VerificationScreen())),
              text: 'Далее'),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    focusNode.removeListener(rebuild);
  }
}
