import 'package:flutter/material.dart';
import 'package:ostarbeiters/models/story.dart';
import 'package:ostarbeiters/pages/game_page/widgets/story_part_widget.dart';

class GamePage extends StatelessWidget {
  GamePage(this.story);
  final Story story;

  @override
  Widget build(BuildContext context) {
    return StoryPartWidget(story.start);
  }
}