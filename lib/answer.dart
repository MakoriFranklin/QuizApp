import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerQuestions;
  final String answerText;
  const Answer({super.key, required this.answerQuestions, required this.answerText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
              onPressed: () {
                answerQuestions();
            },
              child: Text(answerText),
          );
  }
}