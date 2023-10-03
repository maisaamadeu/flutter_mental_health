import 'package:flutter/material.dart';
import 'package:flutter_mental_health/app/core/models/emotion_model.dart';
import 'package:google_fonts/google_fonts.dart';

class EmotionWidget extends StatelessWidget {
  const EmotionWidget(
      {super.key,
      required this.index,
      required this.emotion,
      required this.length});

  final int index;
  final int length;
  final EmotionModel emotion;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: index == length - 1 ? 0 : 15,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: ShapeDecoration(
              color: emotion.color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Icon(
              emotion.icon,
              color: Colors.white,
              size: 60,
            ),
          ),
          Text(
            emotion.name,
            textAlign: TextAlign.center,
            style: GoogleFonts.alegreyaSans(
              color: const Color(0xFF371B34),
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
