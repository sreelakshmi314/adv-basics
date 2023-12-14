import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText({
    super.key,
    required this.outputText,
    required this.outputColor,
    required this.outputWeight,
    required this.outputSize,
    required this.outputAlign
  });

  final String outputText;
  final Color outputColor;
  final FontWeight outputWeight;
  final double outputSize;
  final TextAlign outputAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      outputText,
      textAlign: outputAlign,
      style: GoogleFonts.lato(
        textStyle: TextStyle(
          color: outputColor,
          fontSize: outputSize,
          fontWeight: outputWeight,
        ),
      ),
    );
  }
}
