import 'package:flutter/material.dart';
import 'package:ostarbeiters/models/story.dart';
import 'package:ostarbeiters/pages/game_page/widgets/story_part_widget.dart';
import 'package:provider/provider.dart';

class GamePage extends StatefulWidget {
  GamePage(this.story);
  final Story story;

  @override
  _GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Provider<Story>.value(
      value: widget.story,
      builder: (context, _) => StoryPartWidget(widget.story.start),
    );
  }
}