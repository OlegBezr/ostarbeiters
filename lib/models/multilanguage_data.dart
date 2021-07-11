import 'package:ostarbeiters/models/languages.dart';

class MultilanguageData<T> {
  MultilanguageData(this.translations);

  factory MultilanguageData.fromRuEn(T ruData, T enData) {
    return MultilanguageData({Languages.ru: ruData, Languages.en: enData});
  }

  Map<Languages, T> translations;
}