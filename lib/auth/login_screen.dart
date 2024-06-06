import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/auth/password_screen.dart';
import 'package:untitled/auth/widget/auth_field.dart';
import 'package:untitled/auth/widget/global_primary_button.dart';
import 'package:untitled/cubit/auth_cubit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController phoneNumberController = TextEditingController();

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
              AuthField(
                iconColor: const Color(0xFFFFEADB),
                controller: phoneNumberController,
                keyboardType: TextInputType.phone,
                icon: Icons.call,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enter your phone number';
                  }
                  return null;
                },
                hintText: 'Phone number',
              ),
              SizedBox(height: 50),
              GlobalPrimaryButton(
                onTap: () {
                  context.read<AuthCubit>().state.copyWith(phoneNumber: phoneNumberController.text);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => PasswordScreen(),
                    ),
                  );
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
