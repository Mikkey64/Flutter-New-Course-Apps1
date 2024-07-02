import 'package:first_app/QuizApp/modules/questions_quiz.dart';

List<QuestionsForQuiz> questions = [
  const QuestionsForQuiz(
    text: 'When did Olivia Rodrigo release her first song?',
    answers: [
      'January 8, 2021',
      'February 14, 2020',
      'March 10, 2019',
      'December 25, 2020',
    ],
    correctAnswer: 'December 25, 2020',
  ),
  const QuestionsForQuiz(
    text: 'What was the title of Olivia Rodrigo\'s debut album?',
    answers: [
      'Sour',
      'Sweet',
      'Bitter',
      'Salty',
    ],
    correctAnswer: 'Sour',
  ), //everybody knows
  const QuestionsForQuiz(
    text:
        'Which song by Billie Eilish won the Grammy Award for Record of the Year in 2020?',
    answers: [
      'Bad Guy',
      'Bury a Friend',
      'Everything I Wanted',
      'Therefore I Am',
    ],
    correctAnswer: 'Bad Guy',
  ), //bad guy
  const QuestionsForQuiz(
    text:
        'Which TV show did Ariana Grande star in before her music career took off?',
    answers: [
      'Victorious',
      'iCarly',
      'Hannah Montana',
      'Drake & Josh',
    ],
    correctAnswer: 'Victorious',
  ), //victorius
  const QuestionsForQuiz(
    text: 'What was the name of Justin Bieber\'s first tour?',
    answers: [
      'My World Tour',
      'Believe Tour',
      'Purpose World Tour',
      'Changes Tour',
    ],
    correctAnswer: 'My World Tour',
  ), //my world
];
