import 'package:flutter/material.dart';
import 'package:ostarbeiters/models/languages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppState extends ChangeNotifier {
  AppState({this.language, this.soundOn}) {
    init();
  }

  Languages language;
  bool soundOn;

  init() async {
    var prefs = await SharedPreferences.getInstance();
    var firstOpen = prefs.getBool('firstOpen');
    if (firstOpen == null) {
      prefs.setBool('firstOpen', true);
      prefs.setInt('language', language.index);
      prefs.setBool('soundOn', soundOn);
    } else {
      language = Languages.values[prefs.getInt('language')];
      soundOn = prefs.getBool('soundOn');
      notifyListeners();
    }
  }

  updateLanguage(Languages newLanguage) {
    language = newLanguage;
    saveValues();
    notifyListeners();
  }

  changeSoundOn() {
    soundOn = !soundOn;
    saveValues();
    notifyListeners();
  }

  saveValues() async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setInt('language', language.index);
    prefs.setBool('soundOn', soundOn);
  }
}