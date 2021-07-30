import 'package:flutter/material.dart';
import 'package:ostarbeiters/pages/stories_list_page/widgets/story_card.dart';
import 'package:ostarbeiters/stories/ivan_klimenko.dart';

class StoriesListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Story $ivanKlimenko');

    return Scaffold(
      appBar: AppBar(

      ),
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 10),
                StoryCard(ivanKlimenko)
              ],
            ),
          )
        ),
      ),
    );
  }
}