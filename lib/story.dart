// import 'package:ostarbeiters/models/multilanguage_text.dart';
// import 'package:ostarbeiters/models/story_part.dart';

// var part1 = LinearPart(
//   MultilanguageText.fromTexts(
//     'Ульяна Савченко 17 лет, крестьянская семья, 9 детей. проживала вместе с семьёй в деревне Ягодно Волынской области на границе с Польшей (территория была оккупирована в первые дни войны).',
//   ),
//   '',
//   nextStoryPart: part2
// );

// var part2 = LinearPart(
//   MultilanguageText.fromTexts(
//     '27 февраля 1942 год - в Германию с оккупированных территорий угоняют почти 40 тысяч человек. В их составе должна была быть ваша старшая сестра Мария, которой на тот момент было 19 лет.',
//   ),
//   '',
//   nextStoryPart: part3
// );

// var part3 = ChoicePart(
//   MultilanguageText.fromTexts(
//     ' Однако Мария заболела тифом, а, так как староста из местных жителей смог договориться с немецкими властями, чтобы от каждого двора принудительно отправляли 1-го человека, то ваш отец решил отправить вас вместо сестры. Согласиться?',
//   ),
//   '',
//   aAnswer: MultilanguageText.fromTexts(
//     'Да',
//   ),
//   aStoryPart: part5,
//   bAnswer: MultilanguageText.fromTexts(
//     'Нет',
//   ),
//   bStoryPart: part4
// );

// var part4 = StoryPart(
//   MultilanguageText.fromTexts(
//     'Ваш дом сожгли, а семью расстреляли.',
//   ),
//   '',
// );

// var part5 = ChoicePart(
//   MultilanguageText.fromTexts(
//     'Вы попали в Распределительный лагерь. В лагере очень голодно, но иногда к проволоке подходили католические монахини. Они подозвали вас. Подойти?',
//   ),
//   '',
//   aAnswer: MultilanguageText.fromTexts(
//     'Да',
//   ),
//   aStoryPart: part7,
//   bAnswer: MultilanguageText.fromTexts(
//     'Нет',
//   ),
//   bStoryPart: part6
// );

// var part6 = StoryPart(
//   MultilanguageText.fromTexts(
//     'Ваш организм не выдержал. Вы умерли от нехватки еды.',
//   ),
//   '',
// );

// var part7 = LinearPart(
//   MultilanguageText.fromTexts(
//     'Вам дали немного еды.',
//   ),
//   '',
//   nextStoryPart: part8
// );

// var part8 = LinearPart(
//   MultilanguageText.fromTexts(
//     'Вы попадаете на завод в городе Эссен, на котором штампуют, сортируют, пакуют разные резиновые изделия. Выходить с территории – нельзя, рядом - люди разных национальностей, и подружки – такие же девчонки из деревни». Еда, которую давали по расписанию, мало походило на пищу - какое - то тёплое месиво, баланда. И так изо дня в день.',
//   ),
//   '',
//   nextStoryPart: part9
// );

// var part9 = ChoicePart(
//   MultilanguageText.fromTexts(
//     'Однажды на завод пришел старый немец, чтобы выбрать работников. Хозяйство у него было большое. Он вас выбрал и отправил работать в доме: следить за чистотой посуды, содержать в порядке постели. Сбежать или остаться у него в доме?',
//   ),
//   '',
//   aAnswer: MultilanguageText.fromTexts(
//     'КУПИТЕ ПОЛНУЮ ВЕРСИЮ!'
//   ),
//   bAnswer: MultilanguageText.fromTexts(
//     'КУПИТЕ ПОЛНУЮ ВЕРСИЮ!'
//   ),
//   aStoryPart: StoryPart(
//     MultilanguageText.fromTexts(
//       'Game over'
//     ),
//     ''
//   ),
//   bStoryPart: StoryPart(
//     MultilanguageText.fromTexts(
//       'Game over'
//     ),
//     ''
//   )
// );
