import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:ostarbeiters/models/story_part.dart';
import 'package:ostarbeiters/story.dart';
import 'package:page_transition/page_transition.dart';

class StoryPartWidget extends StatelessWidget {
  StoryPartWidget({this.storyPart});
  
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


  Widget storyTextWidget() {
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
          storyPart.text
        ),
      ),
    );
  }

  Widget linearStoryWidget(BuildContext context, LinearPart linearPart) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        Navigator.of(context).pushReplacement(
          PageTransition(
            child: StoryPartWidget(storyPart: linearPart.nextStoryPart),
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
              storyTextWidget(),
              Expanded(child: Container(), flex: 2),
            ],
          ),
        ),
      ),
    );
  }

  Widget choiceStoryWidget(BuildContext context, ChoicePart choicePart) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 5,
            ),
            storyTextWidget(),
            Expanded(child: Container(), flex: 1),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  PageTransition(
                    child: StoryPartWidget(storyPart: choicePart.aStoryPart),
                    type: PageTransitionType.fade
                  )
                );
              }, 
              child: Text(
                choicePart.aAnswer
              )
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  PageTransition(
                    child: StoryPartWidget(storyPart: choicePart.bStoryPart),
                    type: PageTransitionType.fade
                  )
                );
              }, 
              child: Text(
                choicePart.bAnswer
              )
            ),
            Expanded(child: Container(), flex: 2),
          ],
        ),
      ),
    );
  }

  Widget endGameWidget(BuildContext context, StoryPart storyPart) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        Navigator.of(context).pushReplacement(
          PageTransition(
            child: StoryPartWidget(storyPart: part1),
            type: PageTransitionType.fade
          )
        );
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
              storyTextWidget(),
              Expanded(child: Container(), flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}