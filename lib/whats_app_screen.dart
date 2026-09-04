import 'package:flutter/material.dart';
import 'package:route_assignment1/app_colors.dart';
import 'package:route_assignment1/custom_text_field.dart';
import 'package:route_assignment1/message_bubble.dart';

class WhatsAppScreen extends StatelessWidget {
  const WhatsAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.green,
        leading: Icon(Icons.arrow_back_ios_new, color: AppColors.white),
        title: Row(
          spacing: 8,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/avatar.jpg"),
              radius: 24,
            ),
            Text(
              'Mohamed Ehab',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: AppColors.white,
                fontSize: 14,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets/Phone.png',width: 24,),
            color: AppColors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset('assets/video.png',width: 24,),
            color: AppColors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset('assets/More-vertical.png',width: 24,),
            color: AppColors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: AppColors.black,
          image: DecorationImage(
            image: AssetImage('assets/wallpaper.png'),
            opacity: 0.1,
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Column(
                  spacing: 16,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    MessageBubble(message: 'hello'),
                    MessageBubble(isSending: false, message: 'hello'),
                    MessageBubble(
                      isSending: true,
                      message:
                          'Hey! Have you ever thought about how random moments can '
                          'sometimes turn into the best memories?'
                          ' It’s like the universe loves to surprise us when we least expect it!',
                    ),
                    MessageBubble(
                      message: 'what a Great Content Tp learn Flutter',
                      image: "assets/message.png",
                    ),
                    MessageBubble(
                      message: "what a Great Content Tp learn Flutter",
                      isSending: false,
                    ),
                  ],
                ),
              ),

              Row(
                spacing: 8,
                children: [
                  Expanded(child: CustomTextField()),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(90),
                      color: AppColors.green,
                    ),
                    height: 50,
                    width: 50,
                    child: IconButton(
                      onPressed: () {},
                      icon: Image(image: AssetImage("assets/Mic.png")),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
