import 'package:flutter/material.dart';

List<Widget> listContainerWidget = [
  const FittedBox(
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Text('Arkadiusz'),
    ),
  ),
  const FittedBox(
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Text('Oczekiwania'),
    ),
  ),
  decorateImage('my_photo.jpg'),
  decorateImage('hobby.jpg'),
  decorateImage('hobby_2.jpg'),
  skills(Icons.lightbulb, Colors.amber, 'Kreatywność'),
  skills(Icons.group, Colors.cyan, 'Praca\nzespołowa'),
  skills(Icons.emoji_emotions, Colors.amber, 'Pozytywne\nnastawienie'),
  skills(Icons.front_hand, Colors.cyan, 'Zaangażowanie'),
  Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      skills(Icons.front_hand, Colors.cyan, 'Zaangażowanie'),
      skills(Icons.group, Colors.cyan, 'Praca\nzespołowa'),
    ],
  ),
];

ClipRRect decorateImage(String nameFile) {
  return ClipRRect(
    borderRadius: const BorderRadius.all(
      Radius.circular(20),
    ),
    child: Image.asset(
      'images/$nameFile',
      fit: BoxFit.contain,
    ),
  );
}

Widget skills(IconData sklillIcon, Color colorIcon, String skill) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Icon(sklillIcon, color: colorIcon, size: 35),
      Text(skill, textAlign: TextAlign.center)
    ],
  );
}
