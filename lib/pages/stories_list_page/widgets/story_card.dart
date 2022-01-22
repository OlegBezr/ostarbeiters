import 'package:flutter/material.dart';
import 'package:ostarbeiters/models/app_state.dart';
import 'package:ostarbeiters/models/story.dart';
import 'package:ostarbeiters/pages/game_page/game_page.dart';
import 'package:provider/provider.dart';

class StoryCard extends StatelessWidget {
  final Story story;

  StoryCard(this.story);

  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<AppState>(context);

    return MaterialButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return GamePage(story);
          })
        );
      },
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            
          )
        ),
        child: Column(
          children: [
            Text(
              story.name.translations[appState.language],
              style: TextStyle(
                fontSize: 20
              ),
            ),
          ],
        ),
      ),
    );
  }
}