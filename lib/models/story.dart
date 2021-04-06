import 'package:ostarbeiters/models/multilanguage_text.dart';
import 'package:ostarbeiters/models/story_part.dart';

class Story {
  Story(this.start, this.name);

  StoryPart start;
  MultilanguageText name;
}