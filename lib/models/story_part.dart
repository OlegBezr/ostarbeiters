import 'package:ostarbeiters/models/multilanguage_text.dart';

class StoryPart {
  MultilanguageText text;
  String imageAsset;

  StoryPart(this.text, this.imageAsset);
}

class LinearPart extends StoryPart {
  StoryPart nextStoryPart;

  LinearPart(MultilanguageText text, String imageAsset, {this.nextStoryPart}) : super(text, imageAsset);
}

class ChoicePart extends StoryPart {
  MultilanguageText aAnswer;
  MultilanguageText bAnswer;
  StoryPart aStoryPart;
  StoryPart bStoryPart;

  ChoicePart(
    MultilanguageText text, String imageAsset,
    {
      this.aAnswer,
      this.bAnswer,
      this.aStoryPart,
      this.bStoryPart
    }
  ) : super(text, imageAsset);
}