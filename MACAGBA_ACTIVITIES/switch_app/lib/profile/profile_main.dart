import 'package:flutter/material.dart';
import 'package:switch_app/asset.dart';
import 'package:switch_app/commons/gradient_container.dart';
import 'package:switch_app/profile/profile_screen.dart';

class ProfileMain extends StatefulWidget {
  const ProfileMain({super.key});

  @override
  State<ProfileMain> createState() {
    return _ProfileMainState();
  }
}

class _ProfileMainState extends State<ProfileMain> {
  // Widget? activeScreen;

  // @override
  // void initState(){
  //   activeScreen = ImageButton(switchScreen);
  //   super.initState();
  // }

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const ProfileScreen();
  //   });
  // }

  var activeScreen = 'start-screen';


    void switchScreen() {
    setState(() {
      activeScreen = 'profile-screen';
    });
  }
  

  @override
  Widget build(BuildContext context) {
    Widget currentScreen = ImageButton(switchScreen);

    if(activeScreen == 'profile-screen'){
      currentScreen = ProfileScreen();
    }
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Colors.white,
          Colors.blue,
          activeScreen: currentScreen,
        ),
      ),
    );
  }
}
