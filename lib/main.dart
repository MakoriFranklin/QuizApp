import 'package:flutter/material.dart';
import 'package:quizapp/answer.dart';
import 'package:quizapp/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    final questions = [
      {
        'question': 'What is your favourite food?',
        'answer': ['Ugali', 'Beef', 'Pilau']
      },
      {
        'question': 'What is your favourite car brand?',
        'answer': ['Mercedez', 'Mazda', 'Toyota']
      },
      {
        'question': 'What is your favourite color?',
        'answer': ['Red', 'Blue', 'Green']
      },
    ];
  var index = 0;

  void answerQuestion() {
    setState(() {
      index = index + 1;
      print(index);
    });
  }

  @override
  Widget build(BuildContext context) {
  

    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromRGBO(36, 32, 56, 1)),
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(36, 32, 56, 1),
          title: const Text(
            'Quiz App',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),
        ),
        body: index < questions.length
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Question(question: questions[index]['question'].toString()),
                      ...(questions[index]['answer'] as List<String>).map((answer) {
                        return Answer(answerQuestions: answerQuestion, answerText: answer);
                      }).toList()
                    ],
                  ),
                ],
              )
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
