import 'package:detective/GameButton.dart';
import 'package:detective/GameTitle.dart';
import 'package:detective/model/UserInfo.dart';
import 'package:flutter/material.dart';

class GameList extends StatelessWidget {

  GameList({required this.userInfo});

  final UserInfo userInfo;

  @override
  Widget build(BuildContext context) {
    return GameTitle(
      userInfo: userInfo,
      gameTitle: '名偵探學院',
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          GameButton(
            buttonContext: Image(
              image: AssetImage(
                'image/circleClose.png',
              ),
              height: 100.0,
              width: 100.0,
            ),
            onPress: () {
              Navigator.pushNamed(context, '/circleClose');
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 20)),
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            child: const Text('Log out'),
          ),
        ],
      ),
    );
  }
}
