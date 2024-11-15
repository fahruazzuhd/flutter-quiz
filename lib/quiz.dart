import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/question.dart';
import 'package:flutter_quiz/questions_page.dart';
import 'package:flutter_quiz/starter_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers = [];
  var activeScreen = 'start-page';

  
  void SwitchPage() {
    setState(() {
      activeScreen = 'questions-page';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) { 
      setState(() {
        activeScreen = 'start-page';
        selectedAnswers.clear();
    });
   }
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 65, 1, 174),
              Color.fromARGB(255, 116, 40, 247)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )
        ),
        child: activeScreen == 'start-page' ?  StarterPage(SwitchPage) : QuestionsPage(onSelectedAnswer: chooseAnswer),
      ),
    );
  }
}