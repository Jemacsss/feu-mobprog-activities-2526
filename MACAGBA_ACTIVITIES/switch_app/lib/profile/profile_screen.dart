import 'package:flutter/material.dart';
import 'package:switch_app/commons/styled_button.dart';
import 'package:switch_app/commons/styled_text.dart';
import 'package:switch_app/data/profile_data.dart';
import 'package:switch_app/models/profile_info.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() {
    return _ProfileScreenState();
  }
}

class _ProfileScreenState extends State<ProfileScreen> {
  var currentInfoIndex = 0;

  void itemClick() {
    setState(() {
      currentInfoIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    ProfileInfo currentInfo = profileData[currentInfoIndex];
    return Center(
      child: Container(
        margin: EdgeInsets.all(150),
        child: Column(
          spacing: 15,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StyledText(currentInfo.infoDescription, 30, Colors.blue),
            SizedBox(height: 30),
            // StyledButton(text: currentInfo.infoItems[0], buttonListener: () {}),
            // StyledButton(text: currentInfo.infoItems[1],buttonListener: () {}),
            // StyledButton(text: currentInfo.infoItems[2], buttonListener: () {}),
            ...currentInfo.getShuffledList().map((item) {
              return StyledButton(text: item, buttonListener: itemClick);
            }),
          ],
        ),
      ),
    );
  }
}
