import 'package:flutter/cupertino.dart';

class Question extends StatelessWidget{
  String question_text;

  Question(this.question_text)

  @override
  Widget build(BuildContext context){
    return Text(question_text);
  }
}