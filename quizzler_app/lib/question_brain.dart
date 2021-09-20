import 'package:quizzler_app/question.dart';

class QuestionBrain {
  int _questionNumber = 0;

  List<Question> _questions = [
    Question('question1 answer true', true),
    Question('question2 answer false', false),
    Question('question3 answer true', true),
    Question('question4 answer true', true),
    Question('question5 answer true', true),
    Question('question6 answer true', true),
    Question('question7 answer true', true),
    Question('question8 answer true', true),
    Question('question9 answer true', true),
    Question('question10 answer true', true),
    Question('question11 answer true', true),
    Question('question12 answer true', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questions[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questions[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    return _questionNumber == _questions.length - 1;
  }

  void reset() {
    _questionNumber = 0;
  }
}
