import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('You can play Battle Royale mode in Valorant.', false),
    Question('Grand Theft Auto is an Open World game.', true),
    Question('Assassin\'s Creed was a copy of Resident Evil game.', false),
    Question('PUBG Mobile was not banned in India.', false),
    Question('Fortnite doesn\'t let you build.', false),
    Question('Minecraft is 2D fighting game.', false),
    Question('Carl Johnson used to live at Grove Street.', true),
    Question('Jin Kazama is the son of Heihachi Mishima.', false),
    Question('Vandal is an assault rifle in Valorant', true),
    Question('Mario was a Plumber.', true),
    Question('Barbarian King is the most strongest troop.', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) _questionNumber++;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber == _questionBank.length - 1) {
      return true;
    } else
      return false;
  }

  void reset() {
    _questionNumber = 0;
  }
}
