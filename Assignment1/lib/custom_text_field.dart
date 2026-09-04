import 'package:flutter/material.dart';
import 'package:route_assignment1/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(height: 20, image: AssetImage("assets/Send.png")),
        ),
        hint: Text(
          "Type a Message ...",
          style: TextStyle(
            color: AppColors.white,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image(height: 20, image: AssetImage("assets/Camera.png")),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.green),
          borderRadius: BorderRadius.circular(40),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
      ),
    );
  }
}
