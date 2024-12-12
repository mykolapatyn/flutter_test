import 'package:flutter/material.dart';
import 'package:untitled/start/start_page.dart';
import 'package:untitled/widgets/buttons/button.dart';

class StartPage2 extends StatefulWidget {
  const StartPage2({super.key});

  @override
  State<StartPage2> createState() => _StartPage2State();
}

class _StartPage2State extends State<StartPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Center(
              child: Text(
                'Do not press the button!)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ))),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'This is just a test. If you will press the button it should navigate you to the next page',
                textAlign: TextAlign.center,
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: MyButton(
                      text: 'Press me :)',
                      backgroundColor: Colors.white,
                      textColor: Colors.black,
                      borderColor: Colors.black,
                      widthSize: 200,
                      heightSize: 50,
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => const StartPage()));
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
