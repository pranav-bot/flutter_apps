import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quizler/questions.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKepper = [];
  int questionNumber = 0;
  bool correctAns = false;
  List<Question> questionBank = [
    Question(q: 'Some cats are actually allergic to humans', a: true),
    Question(q: 'You can lead a cow down stairs but not up stairs.', a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet.',
        a: true),
    Question(q: 'A slug\'s blood is green.', a: true),
    Question(q: 'Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', a: true),
    Question(q: 'It is illegal to pee in the Ocean in Portugal.', a: true),
    Question(
        q: 'No piece of square dry paper can be folded in half more than 7 times.',
        a: false),
    Question(
        q: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        a: true),
    Question(
        q: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        a: false),
    Question(
        q: 'The total surface area of two human lungs is approximately 70 square metres.',
        a: true),
    Question(q: 'Google was originally called \"Backrub\".', a: true),
    Question(
        q: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        a: true),
    Question(
        q: 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        a: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  questionBank[questionNumber].questionText,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(15),
          child: TextButton(
              onPressed: () {
                if (questionNumber < questionBank.length - 1) {
                  setState(() {
                    correctAns = questionBank[questionNumber].questionAnswer;
                    questionNumber++;
                    if (correctAns == true) {
                      scoreKepper.add(const Icon(
                        Icons.check,
                        color: Colors.green,
                      ));
                    } else {
                      scoreKepper.add(const Icon(
                        Icons.cancel,
                        color: Colors.red,
                      ));
                    }
                  });
                } else {
                  questionNumber = questionBank.length - 1;
                }
              },
              child: Container(
                width: 600,
                height: 200,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    'True',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              )),
        )),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.all(15),
          child: TextButton(
              onPressed: () {
                if (questionNumber < questionBank.length - 1) {
                  setState(() {
                    correctAns = questionBank[questionNumber].questionAnswer;
                    questionNumber++;
                    if (correctAns == false) {
                      scoreKepper.add(const Icon(
                        Icons.check,
                        color: Colors.green,
                      ));
                    } else {
                      scoreKepper.add(const Icon(
                        Icons.cancel,
                        color: Colors.red,
                      ));
                    }
                  });
                } else {
                  questionNumber = questionBank.length - 1;
                }
              },
              child: Container(
                width: 600,
                height: 200,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    'False',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              )),
        )),
        Row(children: scoreKepper)
      ],
    );
  }
}
