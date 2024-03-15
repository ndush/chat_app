
import 'package:chat_app/features/signup/signup_form.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Signup ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
          iconSize: 30,
        ),
      ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: SignupForm(formKey: _formKey),
        ),
      );
  }
}
