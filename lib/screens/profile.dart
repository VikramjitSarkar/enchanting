import 'package:enchanting/screens/welcome.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:super_bottom_navigation_bar/super_bottom_navigation_bar.dart';

class Profile extends StatefulWidget {
  static const String id = 'Profile';

  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.only(bottom: 100),
          children: <Widget>[
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.pinkAccent,
              ),
              child: MaterialButton(
                onPressed: (){
                  Navigator.popAndPushNamed(context, Profile.id);
                },
                child: AnimatedTextKit(
                  animatedTexts: [
                    ColorizeAnimatedText(
                      'Header',
                      textStyle: colorizedTextStyle,
                      colors: colorizeColors,
                    ),
                  ],
                  isRepeatingAnimation: true,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.message),
              title: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'Edit Profile',
                    textStyle: colorizedTextStyle,
                    colors: colorizeColors,
                  ),
                ],
                isRepeatingAnimation: true,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.wallet_giftcard),
              title: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'Wallet',
                    textStyle: colorizedTextStyle,
                    colors: colorizeColors,
                  ),
                ],
                isRepeatingAnimation: true,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'Settings',
                    textStyle: colorizedTextStyle,
                    colors: colorizeColors,
                  ),
                ],
                isRepeatingAnimation: true,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'Logout',
                    textStyle: colorizedTextStyle,
                    colors: colorizeColors,
                  ),
                ],
                isRepeatingAnimation: true,
              ),
              onTap: () {
                Navigator.popAndPushNamed(context, Welcome.id);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent.withOpacity(0.5),
        title: AnimatedTextKit(
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
      ),
      bottomNavigationBar: SuperBottomNavigationBar(
        currentIndex: 2,
        items: makeNavItems(),
        onSelected: (index) {
          if (kDebugMode) {
            print('tab $index');
          }
        },
      ),
      backgroundColor: Colors.pinkAccent,
      body: Column(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        child: Image.asset('images/wand.png'),
      ),
    );
  }

  List<SuperBottomNavigationBarItem> makeNavItems() {
    return [
      const SuperBottomNavigationBarItem(
          unSelectedIcon: Icons.person_outlined,
          selectedIcon: Icons.person_outlined,
          size: 30,
          backgroundShadowColor: Colors.red,
          borderBottomColor: Colors.red,
          borderBottomWidth: 3,
          // highlightColor: Colors.red,
          // hoverColor: ,
          splashColor: Colors.red,
          selectedIconColor: Colors.red,
          unSelectedIconColor: Colors.red),
       const SuperBottomNavigationBarItem(
          unSelectedIcon: Icons.chat_bubble_outline,
          selectedIcon: Icons.chat_bubble_outline,
          size: 30,
          backgroundShadowColor: Colors.blue,
          borderBottomColor: Colors.blue,
          borderBottomWidth: 3,
          // highlightColor: Colors.red,
          // hoverColor: ,
          splashColor: Colors.blue,
          selectedIconColor: Colors.blue,
          unSelectedIconColor: Colors.blue),
      const SuperBottomNavigationBarItem(
          unSelectedIcon: Icons.travel_explore,
          selectedIcon: Icons.travel_explore,
          size: 30,
          backgroundShadowColor: Colors.yellowAccent,
          borderBottomColor: Colors.yellowAccent,
          borderBottomWidth: 3,
          // highlightColor: Colors.red,
          // hoverColor: ,
          splashColor: Colors.yellowAccent,
          selectedIconColor: Colors.yellowAccent,
          unSelectedIconColor: Colors.yellowAccent),
      const SuperBottomNavigationBarItem(
          unSelectedIcon: Icons.shopify_outlined,
          selectedIcon: Icons.shopify_outlined,
          size: 30,
          backgroundShadowColor: Colors.green,
          borderBottomColor: Colors.green,
          borderBottomWidth: 3,
          // highlightColor: Colors.red,
          // hoverColor: ,
          splashColor: Colors.green,
          selectedIconColor: Colors.green,
          unSelectedIconColor: Colors.green),
      const SuperBottomNavigationBarItem(
          unSelectedIcon: Icons.people_outline,
          selectedIcon: Icons.people_outline,
          size: 30,
          backgroundShadowColor: Colors.purpleAccent,
          borderBottomColor: Colors.purpleAccent,
          borderBottomWidth: 3,
          // highlightColor: Colors.red,
          // hoverColor: ,
          splashColor: Colors.purpleAccent,
          selectedIconColor: Colors.purpleAccent,
          unSelectedIconColor: Colors.purpleAccent),
    ];
  }
}
