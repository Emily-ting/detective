import 'dart:collection';

import 'package:detective/GameList.dart';
import 'package:detective/GameTitle.dart';
import 'package:flutter/material.dart';
import '../../model/UserInfo.dart';

import 'package:detective/model/OneInNine.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../model/NineSquare.dart';

class CircelClose extends StatelessWidget {
  CircelClose({required this.userInfo});

  final UserInfo userInfo;

  @override
  Widget build(BuildContext context) {
    return GameTitle(
      userInfo: userInfo,
      gameTitle: 'Circle & Close',
      child: BodyDetail(),
    );
  }
}

class BodyDetail extends StatefulWidget {
  const BodyDetail({Key? key}) : super(key: key);

  @override
  _BodyDetailState createState() => _BodyDetailState();
}

class _BodyDetailState extends State<BodyDetail> {
  double choosedSize = 0.0;
  IconData choosedIcon = IconData(0);
  String choosed = '';
  double bigSize = 20.0, middleSize = 15.0, smallSize = 10.0;
  NineSquare nineSquare = new NineSquare();
  int step = 0, lastLocation = 0, chooseCount = 0;
  List<OneInNine> eachHistory = [];
  Map<String, Object> count = HashMap();
  bool sizeDisable = false;
  int bigCircle = 2, middleCircle = 2, smallCircle = 2;
  int bigClose = 2, middleClose = 2, smallClose = 2;

  Widget chooseSizeButton(String name, double size) {
    return Column(
      children: <Widget>[
        TextButton(
          onPressed: getSizeFuntion(size),
          child: Text('$name'),
        ),
        getSizeCount(size),
      ],
    );
  }

  Widget getSizeCount(double size) {
    if (step.compareTo(0) == 0) {
      if ('circle'.compareTo(choosed) == 0) {
        if (bigSize.compareTo(size) == 0) {
          chooseCount = bigCircle;
        } else if (middleSize.compareTo(size) == 0) {
          chooseCount = middleCircle;
        } else {
          chooseCount = smallCircle;
        }
      } else {
        if (bigSize.compareTo(size) == 0) {
          chooseCount = bigClose;
        } else if (middleSize.compareTo(size) == 0) {
          chooseCount = middleClose;
        } else {
          chooseCount = smallClose;
        }
      }
    }
    return Text('*$chooseCount');
  }

  void Function()? getSizeFuntion(double size) {
    int number = 0;
    if ('circle'.compareTo(choosed) == 0) {
      if (bigSize.compareTo(size) == 0) {
        number = bigCircle;
      } else if (middleSize.compareTo(size) == 0) {
        number = middleCircle;
      } else {
        number = smallCircle;
      }
    } else {
      if (bigSize.compareTo(size) == 0) {
        number = bigClose;
      } else if (middleSize.compareTo(size) == 0) {
        number = middleClose;
      } else {
        number = smallClose;
      }
    }
    if (sizeDisable || number == 0) {
      return null;
    } else {
      return () {
        setState(() {
          choosedSize = size;
          step = 1;
          lastLocation = -1;
          chooseCount = number - 1;
        });
      };
    }
  }

  Widget buttonInNine(int number) {
    return IconButton(
      icon: Icon(
        nineSquare.contents.elementAt(number).contentIcon,
        size: nineSquare.contents.elementAt(number).contentSize,
      ),
      onPressed: () {
        setState(() {
          if (step == 0) {
            sizeDisable = true;
            choosedIcon = nineSquare.contents.elementAt(number).contentIcon;
            choosedSize = nineSquare.contents.elementAt(number).contentSize;
            lastLocation = number;
            step++;
          } else {
            nineSquare.contents.elementAt(number).contentIcon = choosedIcon;
            nineSquare.contents.elementAt(number).contentSize = choosedSize;
            nineSquare.contents
                .elementAt(number)
                .history
                .add(OneInNine(choosedIcon, choosedSize));
            if (lastLocation >= 0) {
              eachHistory = nineSquare.contents.elementAt(lastLocation).history;
              eachHistory.removeAt(eachHistory.length - 1);
              if (eachHistory.isEmpty) {
                nineSquare.contents.elementAt(lastLocation).contentIcon =
                    IconData(0);
                nineSquare.contents.elementAt(lastLocation).contentSize = 0.0;
              } else {
                nineSquare.contents.elementAt(lastLocation).contentIcon =
                    eachHistory.elementAt(eachHistory.length - 1).contentIcon;
                nineSquare.contents.elementAt(lastLocation).contentSize =
                    eachHistory.elementAt(eachHistory.length - 1).contentSize;
              }
            } else {
              if ('circle'.compareTo(choosed) == 0) {
                if (choosedSize.compareTo(bigSize) == 0) {
                  bigCircle--;
                } else if (choosedSize.compareTo(middleCircle) == 0) {
                  middleCircle--;
                } else {
                  smallCircle--;
                }
              } else {
                if (choosedSize.compareTo(bigSize) == 0) {
                  bigClose--;
                } else if (choosedSize.compareTo(middleCircle) == 0) {
                  middleClose--;
                } else {
                  smallClose--;
                }
              }
            }
            step = 0;
          }
        });
      },
    );
  }

  Widget nineC() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            buttonInNine(0),
            SizedBox(
              width: 100.0,
              child: Divider(
                color: Colors.black,
              ),
            ),
            buttonInNine(1),
            SizedBox(
              width: 100.0,
              child: Divider(
                color: Colors.black,
              ),
            ),
            buttonInNine(2),
          ],
        ),
        SizedBox(
          height: 150.0,
          child: VerticalDivider(
            color: Colors.black,
          ),
        ),
        Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            buttonInNine(3),
            SizedBox(
              width: 100.0,
              child: Divider(
                color: Colors.black,
              ),
            ),
            buttonInNine(4),
            SizedBox(
              width: 100.0,
              child: Divider(
                color: Colors.black,
              ),
            ),
            buttonInNine(5),
          ],
        ),
        SizedBox(
          height: 150.0,
          child: VerticalDivider(
            color: Colors.black,
          ),
        ),
        Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            buttonInNine(6),
            SizedBox(
              width: 100.0,
              child: Divider(
                color: Colors.black,
              ),
            ),
            buttonInNine(7),
            SizedBox(
              width: 100.0,
              child: Divider(
                color: Colors.black,
              ),
            ),
            buttonInNine(8),
          ],
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          nineC(),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              chooseSizeButton('Big', bigSize),
              SizedBox(
                width: 5.0,
              ),
              chooseSizeButton('Middle', middleSize),
              SizedBox(
                width: 5.0,
              ),
              chooseSizeButton('Small', smallSize),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.circle_outlined),
                onPressed: () {
                  setState(() {
                    choosedIcon = Icons.circle_outlined;
                    choosedSize = 0.0;
                    step = 0;
                    lastLocation = -1;
                    choosed = 'circle';
                    sizeDisable = false;
                  });
                },
              ),
              SizedBox(
                width: 30.0,
              ),
              IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  setState(() {
                    choosedIcon = Icons.close;
                    choosedSize = 0.0;
                    step = 0;
                    lastLocation = -1;
                    choosed = 'close';
                    sizeDisable = false;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 20)),
            onPressed: () {
              Navigator.pushNamed(context, '/gameList');
            },
            child: const Text('Go back to List'),
          ),
        ],
      ),
    );
  }
}
