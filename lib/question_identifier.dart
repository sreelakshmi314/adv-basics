import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adv_basics/styled_text.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(this.dataItem,{super.key});

  final Map<String, Object> dataItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              // shape: BoxShape.circle,
              color: dataItem['correct-answer'] == dataItem['user-answer']
                  ? const Color.fromARGB(255, 169, 216, 255)
                  : const Color.fromARGB(255, 201, 96, 253),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                (((dataItem['question_index']) as int) + 1).toString(),
                style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                        color: Color.fromARGB(255, 10, 0, 0),
                        fontSize: 16,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StyledText(
                    outputText: (dataItem['question']).toString(),
                    outputColor: const Color.fromARGB(255, 255, 255, 255),
                    outputWeight: FontWeight.bold,
                    outputSize: 16,
                    outputAlign: TextAlign.left,
                  ),
                  StyledText(
                    outputText: (dataItem['user-answer']).toString(),
                    outputColor: const Color.fromARGB(255, 215, 150, 248),
                    outputWeight: FontWeight.normal,
                    outputSize: 16,
                    outputAlign: TextAlign.left,
                  ),
                  StyledText(
                    outputText: (dataItem['correct-answer']).toString(),
                    outputColor: const Color.fromARGB(255, 169, 216, 255),
                    outputWeight: FontWeight.normal,
                    outputSize: 16,
                    outputAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
