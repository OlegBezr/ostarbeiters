import 'package:flutter/material.dart';
import 'package:ostarbeiters/pages/stories_list_page/widgets/story_card.dart';
import 'package:ostarbeiters/stories/ulyana_story.dart';

class StoriesListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 10),
                StoryCard(ulyanaStory)
              ],
            ),
          )
        ),
      ),
    );
  }
}