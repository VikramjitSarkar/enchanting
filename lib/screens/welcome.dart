import 'package:enchanting/screens/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:enchanting/screens/registration.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:enchanting/components/rounded_button.dart';

class Welcome extends StatefulWidget {
  static const String id = 'Welcome';

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> with SingleTickerProviderStateMixin {
  static const colorizeColors = [
    Colors.black,
    Colors.purple,
    Colors.blue,
    Colors.yellow,
    Colors.red,
  ];
  static const colorizedTextStyle = TextStyle(
    fontSize: 35,
    fontFamily: 'Canterbury',
    fontWeight: FontWeight.w900,
  );

  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
    animation = ColorTween(begin: Colors.pinkAccent, end: Colors.white).animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Hero(
                  tag: 'wand',
                  child: Container(
                    child: Image.asset('images/wand.png'),
                    height: 60,
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      'ENCHANTING',
                      textStyle: colorizedTextStyle,
                      colors: colorizeColors,
                    ),
                    ColorizeAnimatedText(
                      'ENCHANTING',
                      textStyle: colorizedTextStyle,
                      colors: colorizeColors,
                    ),
                    ColorizeAnimatedText(
                      'ENCHANTING',
                      textStyle: colorizedTextStyle,
                      colors: colorizeColors,
                    ),
                  ],
                  isRepeatingAnimation: true,
                ),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              title: 'Log In',
              onPressed: () {
                Navigator.pushNamed(context, Login.id);
              },
              color: Colors.pinkAccent,
            ),
            RoundedButton(
                color: Colors.pinkAccent,
                onPressed: () {
                  Navigator.pushNamed(context, Registration.id);
                },
                title: 'Register')
          ],
        ),
      ),
    );
  }
}
