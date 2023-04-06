import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final VoidCallback ans;
  final String answerquestions;
  Answers(this.ans, this.answerquestions);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(Color.fromARGB(255, 208, 62, 9)),
        ),
        child: Text(answerquestions),
        onPressed: ans,
      ),
    );
  }
}
