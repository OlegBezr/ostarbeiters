import 'package:ostarbeiters/models/languages.dart';

class MultilanguageText {
  MultilanguageText(this.translations);

  factory MultilanguageText.fromTexts(String ruText, String enText) {
    return MultilanguageText({Languages.ru: ruText, Languages.en: enText});
  }

  Map<Languages, String> translations;
}