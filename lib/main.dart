import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
                '名偵探學院',
                style: GoogleFonts.macondo(),
              )),
        ),
        backgroundColor: Colors.white,
        body: BodyDetail(),
      ),
    );
  }
}

class BodyDetail extends StatefulWidget {
  const BodyDetail({Key? key}) : super(key: key);

  @override
  _BodyDetailState createState() => _BodyDetailState();
}

class _BodyDetailState extends State<BodyDetail> {

  late double chooseSize = 5.0;
  late IconData choosedIcon = IconData(0);
  late IconData one = IconData(0), two = IconData(0), three = IconData(0);
  late IconData four = IconData(0), five = IconData(0), six = IconData(0);
  late IconData seven = IconData(0), eight = IconData(0), nine = IconData(0);
  late double oneS = 5.0, twoS = 5.0, threeS = 5.0;
  late double fourS = 5.0, fiveS = 5.0, sixS = 5.0;
  late double sevenS = 5.0, eightS = 5.0, nineS = 5.0;

  Widget chooseButton(String name, int number, double size) {
    return Column(
      children: <Widget>[
        TextButton(
          onPressed: (){
            setState(() {
              chooseSize = size;
            });
          },
          child: Text('$name'),
        ),
        Text('*$number'),
      ],
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
            FlatButton(
              child: Icon(
                one,
                size: oneS,
              ),
              onPressed: (){
                setState(() {
                  one = choosedIcon;
                  oneS = chooseSize;
                });
              },
            ),
            SizedBox(
              width: 100.0,
              child: Divider(
                color: Colors.black,
              ),
            ),
            FlatButton(
              child: Icon(
                  two
              ),
              onPressed: (){
                setState(() {
                  two = choosedIcon;
                });
              },
            ),
            SizedBox(
              width: 100.0,
              child: Divider(
                color: Colors.black,
              ),
            ),
            FlatButton(
              child: Icon(
                  three
              ),
              onPressed: (){
                setState(() {
                  three = choosedIcon;
                });
              },
            ),
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
            FlatButton(
              child: Icon(
                  three
              ),
              onPressed: (){
                setState(() {
                  three = choosedIcon;
                });
              },
            ),
            SizedBox(
              width: 100.0,
              child: Divider(
                color: Colors.black,
              ),
            ),
            FlatButton(
              child: Icon(
                  three
              ),
              onPressed: (){
                setState(() {
                  three = choosedIcon;
                });
              },
            ),
            SizedBox(
              width: 100.0,
              child: Divider(
                color: Colors.black,
              ),
            ),
            FlatButton(
              child: Icon(
                  three
              ),
              onPressed: (){
                setState(() {
                  three = choosedIcon;
                });
              },
            ),
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
            FlatButton(
              child: Icon(
                  three
              ),
              onPressed: (){
                setState(() {
                  three = choosedIcon;
                });
              },
            ),
            SizedBox(
              width: 100.0,
              child: Divider(
                color: Colors.black,
              ),
            ),
            FlatButton(
              child: Icon(
                  three
              ),
              onPressed: (){
                setState(() {
                  three = choosedIcon;
                });
              },
            ),
            SizedBox(
              width: 100.0,
              child: Divider(
                color: Colors.black,
              ),
            ),
            FlatButton(
              child: Icon(
                  three
              ),
              onPressed: (){
                setState(() {
                  three = choosedIcon;
                });
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget columnDeatil() {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          'a',
          style: TextStyle(fontSize: 20.0,
          ),
        ),
        SizedBox(
          width: 100.0,
          child: Divider(
            color: Colors.black,
          ),
        ),
        Text(
          'b',
          style: TextStyle(fontSize: 20.0),
        ),
        SizedBox(
          width: 100.0,
          child: Divider(
            color: Colors.black,
          ),
        ),
        Text(
          'c',
          style: TextStyle(fontSize: 20.0),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
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
                chooseButton('Big', 1, 20.0),
                SizedBox(
                  width: 5.0,
                ),
                chooseButton('Middle', 2, 15.0),
                SizedBox(
                  width: 5.0,
                ),
                chooseButton('Small', 3, 10.0),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                      Icons.circle_outlined
                  ),
                  onPressed: (){
                    setState(() {
                      choosedIcon = Icons.circle_outlined;
                    });
                  },
                ),
                SizedBox(
                  width: 30.0,
                ),
                IconButton(
                  icon: Icon(
                      Icons.close
                  ),
                  onPressed: (){
                    setState(() {
                      choosedIcon = Icons.close;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
