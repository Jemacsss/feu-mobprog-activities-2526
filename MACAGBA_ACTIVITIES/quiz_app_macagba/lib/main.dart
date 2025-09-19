import 'package:flutter/material.dart';
import 'package:quiz_app_macagba/data/questions.dart';
import 'package:quiz_app_macagba/screens/category_screen.dart';
import 'package:quiz_app_macagba/screens/quiz_screen.dart';
import 'package:quiz_app_macagba/screens/quiz_summary.dart';
import 'package:quiz_app_macagba/screens/title_screen.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  String? _selectedCategory;
  bool _quizCompleted = false;
  List<QuizResult> _results = [];

  void _goToCategorySelection() {
    setState(() {
      _selectedCategory = '';
      _quizCompleted = false;
      _results = [];
    });
  }

  void _startQuiz(String category) {
    setState(() {
      _selectedCategory = category;
      _quizCompleted = false;
      _results = [];
    });
  }

  void _finishQuiz(List<QuizResult> results) {
    setState(() {
      _quizCompleted = true;
      _results = results;
    });
  }

  void _resetCategory() {
    setState(() {
      _selectedCategory = null;
      _quizCompleted = false;
      _results = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screen = TitleScreen(onStart: _goToCategorySelection);

    if (_selectedCategory == '') {
      screen = CategorySelectionScreen(
        onCategorySelected: _startQuiz,
      );
    } else if (_selectedCategory != null && !_quizCompleted) {
      screen = QuizScreen(
        category: _selectedCategory!,
        onComplete: _finishQuiz,
      );
    } else if (_quizCompleted) {
      screen = QuizSummary(
        results: _results,
        onRetake: () => _startQuiz(_selectedCategory!),
        onReselect: _resetCategory,
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      home: Scaffold(body: screen),
    );
  }
}
