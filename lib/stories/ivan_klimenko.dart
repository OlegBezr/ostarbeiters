import 'package:ostarbeiters/models/multilanguage_data.dart';
import 'package:ostarbeiters/models/multilanguage_text.dart';
import 'package:ostarbeiters/models/story.dart';
import 'package:ostarbeiters/models/story_part.dart';

var ivanKlimenko = Story(
  start: part1, 
  name: MultilanguageText.fromTexts('Иван Клименко', 'Ivan Klimenko'), 
  assetsFolder: 'ivan_klimenko'
);

var part1 = LinearPart(
  text: MultilanguageText.fromTexts(
    'Вас зовут Иван Клименко, вам 18 лет. Вы проживаете в деревеньке недалеко от Луганска.',
    'Your name is Ivan Klimenko, You are 18 years old. You live in a village near Lugansk.'
  ),
  textSound: MultilanguageData<String>.fromRuEn(
    'Вас зовут Иван Клименко (mp3cut.net).m4a', 
    'Your name (mp3cut.net).m4a'
  ),
  imageAsset: 'empty.png',
  heroAsset: 'ivan.png',
  nextStoryPart: part2,
);

var part2 = LinearPart(
  text: MultilanguageText.fromTexts(
    'К вам в дом приходит полицай и говорит вашим родителям, что если вас не отправят на работы в Германию, то вашу семью подвергнут наказанию.',
    'A Polizei comes to your house. You must go to work to Germany. If you decline, there will be consequences for your family.'
  ),
  textSound: MultilanguageData<String>.fromRuEn(
    'К вам в дом (mp3cut.net).m4a', 
    'A Polizei.m4a'
  ),
  imageAsset: 'house.png',
  heroAsset: 'ivan.png',
  heroesAsset: 'polizai.png',
  nextStoryPart: part3,
);

var part3 = LinearPart(
  text: MultilanguageText.fromTexts(
    'Родители со слезами отпускают вас. Немцы везут вас на вокзал, где вместе с другими молодыми людьми грузят в вагоны для скота. В дороге тяжело, условия в вагонах отвратительные, и вы решаете посоветоваться с друзьями, не сбежать ли вам.',
    'Your parents let you go, tears in their eyes. You are taken to the train station and board a freight train. The conditions are harsh, and your friends contemplate escape. Do you escape with them?',
  ),
  textSound: MultilanguageData<String>.fromRuEn(
    'Родители со слезами.m4a', 
    'Your parents let you.m4a'
  ),
  imageAsset: 'trains.png',
  heroAsset: 'ivan.png',
  heroesAsset: 'parents.png',
  nextStoryPart: part4
);

var part4 = ChoicePart(
  aAnswer: MultilanguageText.fromTexts(
    '"А давайте рискнем! Вдруг встретим партизан?"',
    '"I\'ll take that risk. We might be lucky enough to stumble upon the partisans?"'
  ),
  bAnswer: MultilanguageText.fromTexts(
    '"Бежать некуда, вся Западная Украина оккупирована немцами. Нас поймают и вернут сюда же, к тому же, того и гляди, достанется!"',
    '"There is nowhere to go, West Ukraine has been occupied by the Nazis since the autumn. We\'ll be captured and returned, and it won\'t end well for us."'
  ),
  aTextSound: MultilanguageText.fromTexts(
    'А давайте рискнем (mp3cut.net).m4a',
    'I\'ll take the risk (mp3cut.net).m4a'
  ),
  bTextSound: MultilanguageText.fromTexts(
    'Бежать некуда (mp3cut.net).m4a',
    'There is nowhere (mp3cut.net).m4a'
  ),
  imageAsset: 'trains.png',
  heroAsset: 'ivan.png',
  heroesAsset: 'friends.png',
  // aStoryPart: ,
  // bStoryPart: part2,
);
