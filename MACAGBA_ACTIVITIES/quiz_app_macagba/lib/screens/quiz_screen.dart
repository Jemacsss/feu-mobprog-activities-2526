import 'package:flutter/material.dart';
import 'package:quiz_app_macagba/commons/styled_button.dart';
import 'package:quiz_app_macagba/commons/styled_text.dart';
import 'package:quiz_app_macagba/data/questions.dart';

class QuizScreen extends StatefulWidget {
  final String category;
  final Function(List<QuizResult>) onComplete;

  const QuizScreen({
    super.key,
    required this.category,
    required this.onComplete,
  });

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentIndex = 0;
  final List<QuizResult> _results = [];

  void _answerQuestion(String selectedAnswer) {
    final currentQ = questions[widget.category]![_currentIndex];
    final isCorrect = selectedAnswer == currentQ.correctAnswer;

    _results.add(
      QuizResult(
        question: currentQ.question,
        selectedAnswer: selectedAnswer,
        correctAnswer: currentQ.correctAnswer,
        isCorrect: isCorrect,
      ),
    );

    if (_currentIndex < questions[widget.category]!.length - 1) {
      setState(() => _currentIndex++);
    } else {
      widget.onComplete(_results);
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentQ = questions[widget.category]![_currentIndex];

    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StyledText(currentQ.question, 32, Colors.black),
            const SizedBox(height: 20),
            ...currentQ.answers.map(
              (ans) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: StyledButton(
                  text: ans,
                  onPressed: () => _answerQuestion(ans),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
