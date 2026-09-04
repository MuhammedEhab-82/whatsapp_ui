import 'package:flutter/material.dart';
import 'package:route_assignment1/app_colors.dart';

class MessageBubble extends StatelessWidget {
  late final double topRightRadius, topLeftRadius;
  final String? image;
  final bool isSending;
  final String message;
  MessageBubble({
    super.key,
    this.isSending = true,
    required this.message,
    this.image,
  }) {
    if (isSending) {
      topLeftRadius = 0;
      topRightRadius = 16;
    } else {
      topLeftRadius = 16;
      topRightRadius = 0;
    }
  }
  Widget? imageAssign() =>
      image != null ? Image(image: AssetImage(image!)) : null;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSending ? Alignment.topLeft : Alignment.topRight,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.only(
            topEnd: Radius.circular(topRightRadius),
            bottomEnd: Radius.circular(16),
            bottomStart: Radius.circular(16),
            topStart: Radius.circular(topLeftRadius),
          ),
          color: isSending ? AppColors.green : Color(0xff232D36),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 8,
            children: [
              Text(
                textAlign: TextAlign.start,
                message,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              ?imageAssign(),
            ],
          ),
        ),
      ),
    );
  }
}
