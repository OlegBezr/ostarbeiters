import 'package:flutter/material.dart';
import 'package:ostarbeiters/models/languages.dart';

class AppState extends ChangeNotifier {
  AppState({this.language, this.soundOn});

  Languages language;
  bool soundOn;

  updateLanguage(Languages newLanguage) {
    language = newLanguage;
    notifyListeners();
  }

  changeSoundOn() {
    soundOn = !soundOn;
    notifyListeners();
  }
}