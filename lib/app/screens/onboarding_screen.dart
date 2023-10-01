// Importa os pacotes necessários.
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  // Construtor da classe OnboardingScreen.
  const OnboardingScreen({super.key});

  // Cores estáticas usadas na tela.
  static const Color _backgroundColor = Color(0xffAEAFF7);
  static const Color _buttonColor = Color(0xff371B34);

  @override
  Widget build(BuildContext context) {
    // Obtém o tamanho da tela do dispositivo.
    var screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
      // Define a cor de fundo da tela.
      backgroundColor: _backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SizedBox(
            width: screenSize.width,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // Texto de título no topo da tela.
                Positioned(
                  top: 20,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    width: screenSize.width,
                    child: Text(
                      'está tudo bem não estar bem!',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.alegreya(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xfffafafa),
                      ),
                    ),
                  ),
                ),
                // Um círculo colorido no fundo da tela.
                Positioned(
                  left: -100,
                  top: 200,
                  child: Container(
                    height: 370,
                    width: 370,
                    decoration: BoxDecoration(
                      color: const Color(0xffFCDDEC).withOpacity(0.5),
                      borderRadius: BorderRadius.circular(1000),
                    ),
                  ),
                ),
                // Imagem SVG no meio da tela.
                Positioned(
                  top: 100,
                  left: 0,
                  right: 0,
                  child: SvgPicture.asset(
                    'assets/svgs/woman.svg',
                    width: screenSize.width,
                  ),
                ),
                // Botão na parte inferior da tela.
                Positioned(
                  bottom: 50,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    width: screenSize.width,
                    height: 70,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: _buttonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        'vamos ajudar você',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.alegreyaSans(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
