import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final void Function() resetHandler;

  const Result(this.resultScore, this.resetHandler, {Key? key})
      : super(key: key);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are madness!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            style: TextButton.styleFrom(primary: Colors.blue),
            onPressed: resetHandler,
            child: const Text('Restart Quiz!'),
          )
        ],
      ),
    );
  }
}
