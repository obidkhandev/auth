import 'package:flutter/material.dart';
import 'package:untitled/auth/widget/global_primary_button.dart';
import 'package:untitled/auth/widget/text_field.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: formKey,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 200),
                  PasswordField(
                    iconColor: const Color(0xFFFFEADB),
                    controller: passwordController,
                    keyboardType: TextInputType.text,
                    icon: Icons.lock,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter your password';
                      }
                      return null;
                    },
                    hintText: 'Phone number',
                  ),
                  SizedBox(height: 50),
                  GlobalPrimaryButton(
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (_)=> PasswordScreen()));
                    },
                    text: "Login",
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
