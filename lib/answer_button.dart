import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key,required this.answerText,required this.onTap});

  final String answerText;
  final void Function(String) onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 5,),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: const Color.fromARGB(255, 53, 2, 97),
        foregroundColor: Colors.white,
      ),
      onPressed: () {
        onTap(answerText);
      },
      child: Text(answerText, textAlign: TextAlign.center,),
    );
  }
}
