import 'package:detective/model/OneInNine.dart';
import 'package:flutter/cupertino.dart';

class NineSquare {
  List<OneInNine> _contents = [
    OneInNine(IconData(0), 0.0), OneInNine(IconData(0), 0.0), OneInNine(IconData(0), 0.0),
    OneInNine(IconData(0), 0.0), OneInNine(IconData(0), 0.0), OneInNine(IconData(0), 0.0),
    OneInNine(IconData(0), 0.0), OneInNine(IconData(0), 0.0), OneInNine(IconData(0), 0.0),
  ];

  List<OneInNine> get contents => _contents;

  set contents(List<OneInNine> value) {
    _contents = value;
  }
}