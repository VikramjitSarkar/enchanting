import 'package:enchanting/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:enchanting/screens/profile.dart';
import 'package:enchanting/components/rounded_button.dart';

class Login extends StatefulWidget {
  static const String id = 'Login';

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.small(
        child: const Icon(
          CupertinoIcons.back,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
        elevation: 16.0,
        splashColor: Colors.pinkAccent,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'wand',
              child: Container(
                height: 200.0,
                child: Image.asset('images/wand.png'),
              ),
            ),
            const SizedBox(
              height: 48.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kTextFieldDecorations.copyWith(
                hintText: 'Username or Email',
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kTextFieldDecorations.copyWith(
                hintText: 'Password',
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            RoundedButton(color: Colors.pinkAccent, onPressed: (){
              Navigator.pushNamed(context, Profile.id);
            }, title: 'Log In')
          ],
        ),
      ),
    );
  }
}
