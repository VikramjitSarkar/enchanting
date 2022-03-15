import 'package:flutter/material.dart';
import 'screens/welcome.dart';
import 'screens/login.dart';
import 'screens/chat.dart';
import 'screens/personality.dart';
import 'screens/profile.dart';
import 'screens/registration.dart';
import 'screens/shop.dart';
import 'screens/tarot.dart';


void main() => runApp(Enchanting());

class Enchanting extends StatefulWidget {
  @override
  State<Enchanting> createState() => _EnchantingState();
}

class _EnchantingState extends State<Enchanting> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: Welcome.id,
        routes: {
          Welcome.id: (context) => Welcome(),
          Login.id : (context) => Login(),
          Registration.id : (context) => Registration(),
          Chat.id : (context)=> Chat(),
          Personality.id: (context) => Personality(),
          Tarot.id:(context)=>Tarot(),
          Shop.id:(context)=> Shop(),
          Profile.id: (context)=> Profile(),
        });
  }
}
