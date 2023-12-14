import 'package:flutter/material.dart';
import 'package:adv_basics/questions_summary.dart';
import 'package:adv_basics/styled_text.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.answersList,
    required this.restartQuiz,
  });
  final List<Map<String, Object>> answersList;
  final void Function() restartQuiz;

  @override
  Widget build(BuildContext context) {
    final numOfTotalQuestions = answersList.length;
    final numOfCorrectAnwers = answersList.where(
      (data) {
        return (data['correct-answer'] == data['user-answer']);
      },
    ).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Align(
            //   child: 
              StyledText(
                outputText:
                    'You answered $numOfCorrectAnwers out of $numOfTotalQuestions questions correctly!',
                outputColor: const Color.fromARGB(255, 226, 193, 249),
                outputWeight: FontWeight.bold,
                outputSize: 18,
                outputAlign: TextAlign.center,
              ),
            // ),
            const SizedBox(
              height: 30,
            ),
            QuestionSummaryScreen(answersList),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton.icon(
              onPressed: restartQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(225, 255, 255, 255),
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz!'),
            ),
          ],
        ),
      ),
    );
  }
}
