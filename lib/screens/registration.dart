import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:enchanting/components/rounded_button.dart';
import 'package:enchanting/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:enchanting/screens/chat.dart';

class Registration extends StatefulWidget {
  static const String id = 'Registration';

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {

  final _auth = FirebaseAuth.instance;

  late String username;
  late String email;
  late String password;

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
              textAlign: TextAlign.center,
              onChanged: (value) {
                username = value;
              },
              decoration: kTextFieldDecorations.copyWith(
                hintText: 'Enter Your Username',
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {
                email = value;
              },
              decoration: kTextFieldDecorations.copyWith(
                hintText: 'Enter Your E-Mail ID',
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                password = value;
              },
              decoration: kTextFieldDecorations.copyWith(
                hintText: 'Enter Your Password',
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                password = value;
              },
              decoration: kTextFieldDecorations.copyWith(
                hintText: 'Confirm Your Password',
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            RoundedButton(color: Colors.pinkAccent, onPressed: () async {
              print(email);
              print(username);
              print(password);
              try {
              final newUser = await _auth.createUserWithEmailAndPassword(email: email, password: password);
              if (newUser != null){
                Navigator.pushNamed(context, Chat.id);
              }
              }
                  catch(e){
                print(e);
                  }
            }, title: 'Sign Up')
          ],
        ),
      ),
    );
  }
}
