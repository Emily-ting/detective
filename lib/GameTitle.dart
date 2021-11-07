import 'package:detective/model/UserInfo.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GameTitle extends StatelessWidget {
  GameTitle(
      {required this.userInfo, required this.gameTitle, required this.child});

  final UserInfo userInfo;
  final String gameTitle;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/userInfo');
              },
              icon: Image.asset('image/nina.jpg'),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              '$gameTitle',
              style: TextStyle(
                fontFamily: 'Mochiy',
              ),
            ),
          ],
        ),
      ),
      body: child,
    );
  }
}
