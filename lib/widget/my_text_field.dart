import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String label;
  final String hint;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final bool isPassword;

  const MyTextField(
      this.label,
      this.hint, {
        super.key,
        this.validator,
        this.controller,
        this.isPassword = false,
      });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 15),
        TextFormField(
          controller: widget.controller,
          validator: widget.validator,
          obscureText: widget.isPassword && _obscure,
          decoration: InputDecoration(
            fillColor: const Color(0xffEDF3F5),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide.none,
            ),
            hintText: widget.hint,
            suffixIcon: widget.isPassword
                ? IconButton(
              icon: Icon(
                _obscure
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                color: const Color(0xffFE5150),
              ),
              onPressed: () => setState(() => _obscure = !_obscure),
            )
                : null,
          ),
        ),
      ],
    );
  }
}