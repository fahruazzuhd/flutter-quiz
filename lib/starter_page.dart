import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class StarterPage extends StatelessWidget {
  const StarterPage(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 50,),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Color.fromARGB(150, 255, 255, 255),
              fontSize: 28,
              fontWeight: FontWeight.normal,
              fontFamily: 'Quicksand',
              decoration: TextDecoration.none
            ),
          ),
          const SizedBox(height: 40,),
          ElevatedButton.icon(
            onPressed: () {
              startQuiz();
            }, 
            icon: const Icon(Icons.arrow_right_alt_outlined),
            label: const Text(
              'Start Quiz',
            )
          )
        ],
      ),
    );
  }
}