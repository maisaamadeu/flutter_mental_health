import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                    const TextSpan(
                      text: 'Sarina!',
                      style: TextStyle(
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
                height: 130,
                child: ListView.builder(
                  itemCount: 5,
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.only(
                      right: index == 5 ? 0 : 15,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 90,
                          height: 100,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFAEAFF7),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        Text(
                          'Calm',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.alegreyaSans(
                            color: const Color(0xFF371B34),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
