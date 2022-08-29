import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final void Function() selectHandler;

  const Answer(this.answerText, this.selectHandler, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
        ),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
