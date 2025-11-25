import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NeonText extends StatelessWidget {
  final String text;
  final double fontSize;

  const NeonText(this.text, {super.key, this.fontSize = 36});

  @override
  Widget build(BuildContext context) {
    final neonColor = Theme.of(context).primaryColor;

    return Text(
      text,
      style: GoogleFonts.orbitron(
        fontSize: fontSize,
        color: neonColor,
        shadows: [
          Shadow(
            blurRadius: 20,
            color: neonColor.withOpacity(0.8),
          )
        ],
      ),
    );
  }
}
