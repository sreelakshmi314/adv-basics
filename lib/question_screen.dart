import 'package:flutter/material.dart';
import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/quiz_questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onComplete, required this.choosenAnswers});

  final void Function() onComplete;
  final List<Map<String, Object>> choosenAnswers;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var count = 0;
  var currentQuestion = questions[0];

 

  void onAnswer(String userAnswer) {
     widget.choosenAnswers.add(
      {
        'question_index': count,
        'question': questions[count].text,
        'user-answer': userAnswer,
        'correct-answer': questions[count].answers[0]
      },
    );

    setState(() {
      count++;
      if (count < questions.length) {
        currentQuestion = questions[count];
      } else {
        widget.onComplete();
      }
    });
  }

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 16,
                ),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffled().map(
              (answer) {
                return AnswerButton(answerText: answer, onTap: onAnswer);
              },
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:adv_basics/answer_button.dart';
// import 'package:adv_basics/data/quiz_questions.dart';

// class QuestionScreen extends StatelessWidget {
//   const QuestionScreen({super.key});

//   @override
//   Widget build(context) {
//     final currentQuestion = questions[0];
//     var count = 0;

//     return SizedBox(
//       width: double.infinity,
//       child: Container(
//         margin: const EdgeInsets.all(40),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               currentQuestion.text,
//               style: const TextStyle(
//                 color: Color.fromARGB(255, 255, 255, 255),
//                 fontSize: 16,
//               ),
//               textAlign: TextAlign.justify,
//             ),
//             const SizedBox(height: 30),
//             ...currentQuestion.getShuffled().map(
//               (answer) {
//                 return AnswerButton(answerText : answer, onTap : (){
//                   count = count + 1;
//                   print('tapping-$count');
//                 });
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
