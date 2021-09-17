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
  textSound: MultilanguageText.fromTexts(
    'Вас зовут Иван Клименко.m4a', 
    'Your name.m4a'
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
  textSound: MultilanguageText.fromTexts(
    'К вам в дом.m4a', 
    'A Polizei.m4a'
  ),
  historicalNote: MultilanguageText.fromTexts('', '*Polizei is German for policeman, the word was adopted on the occupied territories.'),
  historicalNoteSound: MultilanguageText.fromTexts('', 'polizei.mp3'),
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
  textSound: MultilanguageText.fromTexts(
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
    'А давайте рискнем.m4a',
    'I’ll take the risk.m4a'
  ),
  bTextSound: MultilanguageText.fromTexts(
    'Бежать некуда.m4a',
    'There is nowhere.m4a'
  ),
  imageAsset: 'trains.png',
  heroAsset: 'ivan.png',
  heroesAsset: 'friends.png',
  aStoryPart: part5,
  bStoryPart: part7,
);

var part5 = LinearPart(
  text: MultilanguageText.fromTexts(
    "Вы решаете сбежать, идёте по рельсам и впоследствии через лес.",
    "You escape with your friends. You walk along the railway and then into the forest."
  ),
  textSound: MultilanguageText.fromTexts(
    "Вы решаете сбежать.m4a",
    "You escape.m4a"
  ),
  imageAsset: 'woods.png',
  heroAsset: "ivan.png",
  heroesAsset: "friends.png",
  nextStoryPart: part6
);

var part6 = LinearPart(
  text: MultilanguageText.fromTexts(
    "Вы находите какую-то деревню, в которой вас отлавливает полицай. Вас снова ведут в эшелон - ехать в Германию.",
    "You reach a village where you are detained by a Polizei. You are returned to the troop train that heads for Germany."
  ),
  textSound: MultilanguageText.fromTexts(
    "Вы находите.m4a",
    "You reach.m4a"
  ),
  imageAsset: 'countryside.png',
  heroAsset: "ivan.png",
  heroesAsset: "friends.png",
  nextStoryPart: part7
);

var part7 = LinearPart(
  text: MultilanguageText.fromTexts(
    "Вы решаете остаться в вагоне. Сначала вас привозят в лагерь в Польше для дезинфекции, а потом доставляют в Германию и отправляют на сбор урожая.",
    "You stay in the train car. You first arrive at a camp in Poland and are then taken to Germany, in time for harvesting."
  ),
  textSound: MultilanguageText.fromTexts(
    "Вы решаете остаться.m4a",
    "You stay in the train car.m4a"
  ),
  imageAsset: 'trains.png',
  heroAsset: "ivan.png",
  heroesAsset: "friends.png",
  nextStoryPart: part8
);

var part8 = LinearPart(
  text: MultilanguageText.fromTexts(
    "Один раз, когда вас вместе с еще пятью рабочими отправляют строить ферму, вас не привозят назад в лагерь несколько дней.",
    "You and a few of your new acquaintances are set to build a farm. You do not return to the camp for several days."
  ),
  textSound: MultilanguageText.fromTexts(
    "Один раз.m4a",
    "You and a few.m4a"
  ),
  imageAsset: 'farm.png',
  heroAsset: "ivan.png",
  heroesAsset: "friends.png",
  nextStoryPart: part9
);

var part9 = LinearPart(
    text: MultilanguageText.fromTexts(
    "На ваши вопросы надзиратели практически ничего не отвечают и говорят вам как-нибудь ночевать здесь. Это прекрасная возможность бежать. Что делать?",
    "Your guards do not answer any questions and tell you to find a place to sleep. It's the perfect opportunity for escape. Do you take it?"
  ),
  textSound: MultilanguageText.fromTexts(
    "На ваши вопросы.m4a",
    "Your guards.m4a"
  ),
  imageAsset: 'farm.png',
  heroAsset: "ivan.png",
  nextStoryPart: part10
);

var part10 = ChoicePart(
  aAnswer: MultilanguageText.fromTexts(
    "Да, конечно! Когда еще предоставится такая возможность? Тем более, ходят слухи, что во Франции действуют партизанские отряды, и можно попытаться добраться до них.",
    "Of course! It's not every day we have this opportunity. There are rumours French guerrilla troops are not far away, we can try and reach them."
  ),
  bAnswer: MultilanguageText.fromTexts(
    "Нет, вас все равно быстро хватятся и вернут назад, да еще и накажут.",
    "No, they'll discover us quickly enough and there will be consequences."
  ),
  aTextSound: MultilanguageText.fromTexts(
    "Да, конечно! когда ещё.m4a",
    "Of course (mp3cut.net).m4a"
  ),
  bTextSound: MultilanguageText.fromTexts(
    "Нет, вас все равно (mp3cut.net).m4a",
    "No, they’ll (mp3cut.net).m4a"
  ),
  aStoryPart: part11,
  imageAsset: 'farm.png',
  heroAsset: "ivan.png",
);

var part11 = LinearPart(
  text: MultilanguageText.fromTexts(
    "Четверо суток вы двигаетесь ориентировочно в сторону Франции по ночам, прячась в траве днем. Вы питаетесь фруктами с деревьев, которые находите рядом с полями.", 
    "For four days you move towards France: walking at night, and hiding during the day. You eat the berries and plants you find on the way."
  ),
  textSound: MultilanguageText.fromTexts(
    "Четверо суток (mp3cut.net).m4a",
    "For four days (mp3cut.net).m4a"
  ),
  nextStoryPart: part12,
  imageAsset: 'field.png',
  heroAsset: "ivan.png",
);

var part12 = LinearPart(
  text: MultilanguageText.fromTexts(
    "На пятые сутки, несмотря на ваши попытки спрятаться, вас находят немцы и приводят в гестапо. Там вас держат неделю, пытая, чтобы выяснить, не узнали ли вы чего-нибудь ненужного, а потом возвращают обратно в лагерь.", 
    "On the fifth day you are discovered and sent to Gestapo. For a week you are detained and tortured to determine whether you have learned something you shouldn't have."
  ),
  textSound: MultilanguageText.fromTexts(
    "На пятые сутки (mp3cut.net).m4a",
    "On the fifth day (mp3cut.net).m4a"
  ),
  historicalNote: MultilanguageText.fromTexts(
    "",
    "Gestapo is the Nazi Secret State Police"
  ),
  historicalNoteSound: MultilanguageText.fromTexts(
    "",
    "gestapo.mp3"
  ),
  imageAsset: 'camp.png',
  heroAsset: "ivan.png",
);

