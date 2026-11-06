import 'package:final_project/screens/home_screen.dart';
import 'package:final_project/widget/my_button.dart';
import 'package:final_project/widget/my_text.dart';
import 'package:final_project/widget/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  String? _emailValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Email is required';
    }
    if (!value.contains('@')) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? _passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  void _login() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 70),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 80),
                myText(),
                const SizedBox(height: 40),
                MyTextField(
                  "Email",
                  "Type your e-mail",
                  controller: _emailController,
                  validator: _emailValidator,
                ),
                const SizedBox(height: 15),
                MyTextField(
                  "Password",
                  "Type your password",
                  controller: _passwordController,
                  validator: _passwordValidator,
                  isPassword: true,
                ),
                const Spacer(),
                myButton("Login", onPressed: _login),
              ],
            ),
          ),
        ),
      ),
    );
  }
}