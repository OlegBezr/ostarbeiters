import 'package:flutter/material.dart';
import 'package:ostarbeiters/models/languages.dart';

class AppState extends ChangeNotifier {
  AppState(this.language);

  Languages language;

  update(Languages newLanguage) {
    language = newLanguage;
    notifyListeners();
  }
}