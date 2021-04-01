import 'package:flutter/material.dart';
import 'package:ostarbeiters/widgets/story_part_widget.dart';

import '../story.dart';

class GamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoryPartWidget(storyPart: part1,);
  }
}