import 'package:flutter/material.dart';
import 'package:ostarbeiters/models/app_state.dart';
import 'package:ostarbeiters/models/story_part.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class StoryPartWidget extends StatelessWidget {
  StoryPartWidget(this.storyPart);
  
  final StoryPart storyPart;

  @override
  Widget build(BuildContext context) {
    if (storyPart is LinearPart) {
      var linearPart = (storyPart as LinearPart);
      return linearStoryWidget(context, linearPart);
    }
    else if (storyPart is ChoicePart) {
      var choicePart = (storyPart as ChoicePart);
      return choiceStoryWidget(context, choicePart);
    }
    
    return endGameWidget(context, storyPart);
  }


  Widget storyTextWidget(AppState appState) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        border: Border.all(
          color: Colors.black,
          width: 2,
        )
      ),
      child: DefaultTextStyle(
        style: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
          fontFamily: 'Agne',
        ),
        child: Text(
          storyPart.text.translations[appState.language]
        ),
      ),
    );
  }

  Widget linearStoryWidget(BuildContext context, LinearPart linearPart) {
    var appState = Provider.of<AppState>(context);

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        Navigator.of(context).pushReplacement(
          PageTransition(
            child: StoryPartWidget(linearPart.nextStoryPart),
            type: PageTransitionType.fade
          )
        );
      },
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 5,
              ),
              storyTextWidget(appState),
              Expanded(child: Container(), flex: 2),
            ],
          ),
        ),
      ),
    );
  }

  Widget choiceStoryWidget(BuildContext context, ChoicePart choicePart) {
    var appState = Provider.of<AppState>(context);

    return Container(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 5,
            ),
            storyTextWidget(appState),
            Expanded(child: Container(), flex: 1),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  PageTransition(
                    child: StoryPartWidget(choicePart.aStoryPart),
                    type: PageTransitionType.fade
                  )
                );
              }, 
              child: Text(
                choicePart.aAnswer.translations[appState.language]
              )
            ),
            SizedBox(height: 20),
            MaterialButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  PageTransition(
                    child: StoryPartWidget(choicePart.bStoryPart),
                    type: PageTransitionType.fade
                  )
                );
              }, 
              child: Text(
                choicePart.bAnswer.translations[appState.language]
              )
            ),
            Expanded(child: Container(), flex: 2),
          ],
        ),
      ),
    );
  }

  Widget endGameWidget(BuildContext context, StoryPart storyPart) {
    var appState = Provider.of<AppState>(context);

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 5,
              ),
              storyTextWidget(appState),
              Expanded(child: Container(), flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}