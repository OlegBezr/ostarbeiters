import 'package:ostarbeiters/models/multilanguage_text.dart';
import 'package:ostarbeiters/models/story.dart';
import 'package:ostarbeiters/models/story_part.dart';

var ulyanaStory = Story(part1, MultilanguageText.fromTexts('Ульяна Савченко', 'Ulyana Savchenko'));

var part1 = LinearPart(
  MultilanguageText.fromTexts(
    'Вас зовут Ульяна Савченко, вам 17 лет.',
    "Your name is Ulyana Savchenko. You're 17."
  ),
  '',
  nextStoryPart: part2,
);

var part2 = LinearPart(
  MultilanguageText.fromTexts(
    'У вас крестьянская семья, в ней 9 детей. Вы проживали вместе с семьёй в деревне Ягодно на границе с Польшей (территория была оккупирована в первые дни войны).',
    'You come from a peasant family with 9 children. Your family lives in Yagodno village near the Polish border. This territory has been occupied during the first days of the war.'
  ),
  '',
  nextStoryPart: part3,
);

var part3 = LinearPart(
  MultilanguageText.fromTexts(
    '1942 год. В Германию с оккупированных территорий угоняют почти 40 тысяч человек. В их составе должна была быть ваша старшая сестра Мария, однако она заболела тифом.',
    'The year is 1942. Around 40 thousand people are involuntarily taken to Germany. One of those people should have been your sister Maria, but she had fallen ill with camp fever.'
  ),
  '',
  nextStoryPart: null,
);