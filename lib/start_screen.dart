import 'package:flutter/material.dart';
import 'package:adv_basics/quiz_screen.dart';
import 'package:adv_basics/question_screen.dart';
import 'package:adv_basics/result_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() {
    return _StartScreen();
  }
}

class _StartScreen extends State<StartScreen> {
  var activeScreen = 'quiz-screen';
  List<Map<String, Object>> summary = [];

  // String code = '';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void switchToResult() {
    setState(() {
      activeScreen = 'result-screen';
    });
  }

  @override
  Widget build(context) {
    Widget displayScreen = QuizScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      summary = [];
      displayScreen = QuestionScreen(
        onComplete: switchToResult,
        choosenAnswers: summary,
      );
    }

    if (activeScreen == 'result-screen') {
      displayScreen = ResultScreen(
        answersList: summary,
        restartQuiz: switchScreen,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 93, 2, 173),
                Color.fromARGB(255, 115, 15, 202),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            // color: Color.fromARGB(255, 104, 7, 189),
          ),
          child: displayScreen,
        ),
      ),
    );
  }
}
