import 'package:ostarbeiters/models/multilanguage_data.dart';
import 'package:ostarbeiters/models/multilanguage_text.dart';

class StoryPart {
  MultilanguageText text;
  MultilanguageData<String> textSound;
  String imageAsset;
  String heroAsset;
  String heroesAsset;

  StoryPart({this.text, this.textSound, this.imageAsset, this.heroAsset,this.heroesAsset});
}

class LinearPart extends StoryPart {
  StoryPart nextStoryPart;

  LinearPart(
    {
      MultilanguageText text,
      MultilanguageData<String> textSound,
      String imageAsset,
      String heroAsset,
      String heroesAsset,
      this.nextStoryPart
    }
  ): super(
    text: text, 
    textSound: textSound,
    imageAsset: imageAsset, 
    heroAsset: heroAsset,
    heroesAsset: heroesAsset
  );
}

class ChoicePart extends StoryPart {
  MultilanguageText aAnswer;
  MultilanguageText bAnswer;
  StoryPart aStoryPart;
  StoryPart bStoryPart;
  MultilanguageText aTextSound;
  MultilanguageText bTextSound;

  ChoicePart(
    {
      MultilanguageText text, 
      MultilanguageData<String> textSound, 
      String imageAsset, 
      String heroAsset,
      String heroesAsset,
      this.aAnswer,
      this.bAnswer,
      this.aTextSound,
      this.bTextSound,
      this.aStoryPart,
      this.bStoryPart
    }
  ): super(
    text: text,
    textSound: textSound,
    imageAsset: imageAsset,
    heroAsset: heroAsset,
    heroesAsset: heroesAsset
  );
}