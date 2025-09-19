import 'package:flutter/material.dart';
import 'package:quiz_app_macagba/commons/styled_button.dart';
import 'package:quiz_app_macagba/commons/styled_text.dart';
import 'package:quiz_app_macagba/data/questions.dart';

class QuizSummary extends StatelessWidget {
  final List<QuizResult> results;
  final VoidCallback onRetake;
  final VoidCallback onReselect;

  const QuizSummary({
    super.key,
    required this.results,
    required this.onRetake,
    required this.onReselect,
  });

  @override
  Widget build(BuildContext context) {
    final score = results.where((r) => r.isCorrect).length;

    return Scaffold(
      backgroundColor: Colors.purple[100],
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            StyledText(
              'Your Score: $score / ${results.length}',
              24,
              Colors.black,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: results.length,
                itemBuilder: (context, index) {
                  final r = results[index];
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 6),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: r.isCorrect ? Colors.green[100] : Colors.red[100],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StyledText(r.question, 28, Colors.black),
                        const SizedBox(height: 6),
                        StyledText(
                          'Your Answer: ${r.selectedAnswer}',
                          16,
                          Colors.black87,
                        ),
                        if (!r.isCorrect)
                          StyledText(
                            'Correct Answer: ${r.correctAnswer}',
                            16,
                            Colors.black87,
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            StyledButton(text: 'Retake Quiz', onPressed: onRetake),
            const SizedBox(height: 10),
            StyledButton(text: 'Reselect Category', onPressed: onReselect),
          ],
        ),
      ),
    );
  }
}
