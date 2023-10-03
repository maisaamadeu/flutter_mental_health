import 'package:flutter/material.dart';
import 'package:flutter_mental_health/app/core/models/emotion_model.dart';
import 'package:flutter_mental_health/app/core/models/user_model.dart';
import 'package:flutter_mental_health/app/shared/widgets/emotion_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final UserModel user = UserModel(username: 'Sarina');
  List<EmotionModel> emotions = [
    EmotionModel(
      name: 'Feliz',
      icon: Icons.sentiment_very_satisfied,
      color: Color(0xffEF5DA8),
    ),
    EmotionModel(
      name: 'Triste',
      icon: Icons.sentiment_very_dissatisfied,
      color: Color.fromARGB(255, 110, 93, 239),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        actions: const [
          CircleAvatar(
            child: Text(
              'A',
            ),
          ),
          SizedBox(
            width: 25,
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 28,
              ),
              Text.rich(
                TextSpan(
                  text: 'Bem-vindo(a) de volta, ',
                  style: GoogleFonts.alegreya(
                    fontSize: 25,
                  ),
                  children: [
                    TextSpan(
                      text: '${user.username}!',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                'Como está se sentindo hoje?',
                style: GoogleFonts.alegreyaSans(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              SizedBox(
                height: 110,
                child: ListView.separated(
                  itemCount: emotions.length,
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 15,
                  ),
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => EmotionWidget(
                    emotion: emotions[index],
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                'Tarefas Disponíveis para Hoje',
                style: GoogleFonts.alegreyaSans(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 23,
              ),
              Expanded(
                child: ListView.separated(
                  itemCount: 2,
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 23,
                  ),
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => Container(
                    height: 160,
                    decoration: BoxDecoration(
                      color: Color(0xffFCDDEC),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
