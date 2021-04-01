class StoryPart {
  String text;
  String imageAsset;

  StoryPart(this.text, this.imageAsset);
}

class LinearPart extends StoryPart {
  StoryPart nextStoryPart;

  LinearPart(String text, String imageAsset, {this.nextStoryPart}) : super(text, imageAsset);
}

class ChoicePart extends StoryPart {
  String aAnswer;
  String bAnswer;
  StoryPart aStoryPart;
  StoryPart bStoryPart;

  ChoicePart(
    String text, String imageAsset,
    {
      this.aAnswer,
      this.bAnswer,
      this.aStoryPart,
      this.bStoryPart
    }
  ) : super(text, imageAsset);
}