import 'package:flutter/cupertino.dart';

class OneInNine {
  IconData _contentIcon = IconData(0);
  double _contentSize = 0.0;
  List<OneInNine> _history = [];


  OneInNine(this._contentIcon, this._contentSize);

  IconData get contentIcon => _contentIcon;

  set contentIcon(IconData value) {
    _contentIcon = value;
  }

  double get contentSize => _contentSize;

  set contentSize(double value) {
    _contentSize = value;
  }

  List<OneInNine> get history => _history;

  set history(List<OneInNine> value) {
    _history = value;
  }
}