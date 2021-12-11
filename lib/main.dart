import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp>
{
  var question_index = 0;


  @override
  Widget build(BuildContext context){

    var questions = [
      'What is your favourite color?',
      'What is your favourite animal?'
    ];

    void answer_question(){
      setState(() {
        question_index = question_index + 1;
      });

      print(question_index);
    }
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Flutter app'),
        ),
        body: Column(
          children: [
            Text(
                questions[question_index]
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed:
                answer_question,
              ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed:(){
                print('Answer 2 chosen!');
              },),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed:(){
                print('Answer 3 chosen!');
              },),
        ],),
      ),
    );
  }
}
