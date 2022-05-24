import 'package:flutter/foundation.dart';

class Question {
  final String title;
  final List<Map> answers;

  Question({
    required this.title,
    required this.answers,
  });
}

class QuestionData {
  final _data = [
    Question(
        title: '1. Який тип двигуна ви б обрали?',
        answers: [
          {'answer' : 'Дизельний',},
          {'answer' : 'Бензиновий',},
        ]
    ),
    Question(
        title: '2. Яку марку автомобіля ви б обрали?',
        answers: [
          {'answer' : 'BMW',},
          {'answer' : 'AUDI',},
          {'answer' : 'Skoda',},
          {'answer' : 'Volkswagen',},
        ]
    ),
    Question(
        title: '3. Який тип кузову вам підходить?',
        answers: [
          {'answer' : 'Седан',},
          {'answer' : 'Універсал',},
          {'answer' : 'Хетчбек',},
          {'answer' : 'Кросовер',},
        ]
    ),
    Question(
        title: '4. Який бюджет ви плануєте витратити на авто?',
        answers: [
          {'answer' : '5000-7000',},
          {'answer' : '7000-10000',},
          {'answer' : '10000-15000',},
        ]
    ),
  ];
  List<Question> get qestions => [..._data];
}