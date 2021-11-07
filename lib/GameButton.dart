import 'package:detective/game/circleClose/CircleClose.dart';
import 'package:flutter/material.dart';

class GameButton extends StatelessWidget {
  GameButton({required this.buttonContext, required this.onPress});

  final Widget buttonContext;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            child: Expanded(child: buttonContext),
            margin: EdgeInsets.only(
              left: 15.0,
              right: 15.0,
              top: 15.0,
            ),
            decoration: BoxDecoration(
              color: Color(0xFF00BB00),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          TextButton(
            child: Text('Circle & Close'),
            onPressed: onPress,
          ),
        ],
      ),
    );
  }
}
