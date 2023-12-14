import 'package:flutter/material.dart';
import 'package:adv_basics/question_identifier.dart';

class QuestionSummaryScreen extends StatelessWidget {
  const QuestionSummaryScreen(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return QuestionIdentifier(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
