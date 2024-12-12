import 'package:flutter/material.dart';
import 'package:untitled/widgets/buttons/button.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: const TextSpan(text: 'Did you just ', children: [
            TextSpan(
                text: 'PRESS ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                )),
            TextSpan(text: 'the button?')
          ]),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              const Text(
                'If you are here, then seems like everything works fine) Thank you for testing)',
                textAlign: TextAlign.center,
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: MyButton(
                    text: 'Press me again',
                    backgroundColor: Colors.white,
                    textColor: Colors.black,
                    borderColor: Colors.black,
                    widthSize: 200,
                    heightSize: 50,
                    onTap: () {
                      Navigator.pop(context);
                      },
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
