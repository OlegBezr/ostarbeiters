import 'package:audioplayers/audioplayers.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostarbeiters/constants.dart';
import 'package:ostarbeiters/models/app_state.dart';
import 'package:ostarbeiters/models/story.dart';
import 'package:ostarbeiters/models/story_part.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class StoryPartWidget extends StatefulWidget {
  StoryPartWidget(this.storyPart);
  
  final StoryPart storyPart;

  @override
  _StoryPartWidgetState createState() => _StoryPartWidgetState();
}

class _StoryPartWidgetState extends State<StoryPartWidget> {
  AudioCache _cache;
  AudioPlayer _player;

  @override
  void initState() {
    super.initState();

    Future.delayed(
      Duration(milliseconds: 200),
      () async {
        var appState = Provider.of<AppState>(context, listen: false);
        _cache = Provider.of<AudioCache>(context, listen: false);
        var story = Provider.of<Story>(context, listen: false);
        
        if (appState.soundOn) {
          if (widget.storyPart is LinearPart)
            _player = await _cache.play('story_content/${story.assetsFolder}/audio/${widget.storyPart.textSound.translations[appState.language]}');
          if (widget.storyPart is ChoicePart) {
            var storyPart = widget.storyPart as ChoicePart;

            _player = await _cache.play(
              'story_content/${story.assetsFolder}/audio/${storyPart.aTextSound.translations[appState.language]}'
            );

            _player.onPlayerCompletion.listen(
              (event) async {
                _player = await _cache.play(
                  'story_content/${story.assetsFolder}/audio/${storyPart.bTextSound.translations[appState.language]}'
                ); 
              }
            );
          }
        }
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<AppState>(context);
    var story = Provider.of<Story>(context, listen: false);

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        if (widget.storyPart is LinearPart) {
          var linearPart = (widget.storyPart as LinearPart);
          Navigator.of(context).pushReplacement(
            PageTransition(
              child: Provider<Story>.value(
                value: story,
                builder: (context, _) => StoryPartWidget(linearPart.nextStoryPart),
              ),
              type: PageTransitionType.fade
            )
          );
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              if (widget.storyPart.imageAsset != null)
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: Image(
                    fit: BoxFit.fitHeight,
                    image: AssetImage('assets/story_content/${story.assetsFolder}/backgrounds/${widget.storyPart.imageAsset}'),
                  ),
                ),
              if (widget.storyPart.heroAsset != null)
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Image(
                    image: AssetImage('assets/story_content/${story.assetsFolder}/heroes/${widget.storyPart.heroAsset}'),
                    height: MediaQuery.of(context).size.height * 2 / 3,
                  )
                ),
              if (widget.storyPart.heroesAsset != null)
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image(
                    image: AssetImage('assets/story_content/${story.assetsFolder}/heroes/${widget.storyPart.heroesAsset}'),
                    height: MediaQuery.of(context).size.height * 2 / 3,
                  )
                ),
              if (widget.storyPart is LinearPart)
                Positioned(
                  top: 0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 1 / 4,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Center(
                      child: DefaultTextStyle(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18.0,
                          fontFamily: 'Agne',
                        ),
                        child: AutoSizeText(
                          widget.storyPart.text.translations[appState.language],
                          textAlign: TextAlign.center,
                          maxLines: 6,
                        ),
                      ),
                    ),
                  ),
                ),
              if (widget.storyPart is ChoicePart)
                Builder(
                  builder: (context) {
                    var storyPart = widget.storyPart as ChoicePart;

                    return Positioned(
                      top: 0,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 1 / 3,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: [
                            Expanded(
                              child: MaterialButton(
                                splashColor: MyColors.mainYellow,
                                animationDuration: Duration(milliseconds: 500),
                                padding: EdgeInsets.all(0),
                                onPressed: () {
                                  Future.delayed(
                                    Duration(milliseconds: 700),
                                    () {
                                      Navigator.of(context).pushReplacement(
                                        PageTransition(
                                          child: Provider<Story>.value(
                                            value: story,
                                            builder: (context, _) => StoryPartWidget(storyPart.bStoryPart),
                                          ),
                                          type: PageTransitionType.fade
                                        )
                                      );
                                    }
                                  );
                                },
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: MyColors.mainYellow.withOpacity(0.5),
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Center(
                                    child: DefaultTextStyle(
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0,
                                        fontFamily: 'Agne',
                                      ),
                                      child: AutoSizeText(
                                        storyPart.aAnswer.translations[appState.language],
                                        textAlign: TextAlign.center,
                                        maxLines: 4,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Expanded(
                              child: MaterialButton(
                                splashColor: MyColors.mainYellow,
                                animationDuration: Duration(milliseconds: 500),
                                padding: EdgeInsets.all(0),
                                onPressed: () {
                                  Future.delayed(
                                    Duration(milliseconds: 700),
                                    () {
                                      Navigator.of(context).pushReplacement(
                                        PageTransition(
                                          child: Provider<Story>.value(
                                            value: story,
                                            builder: (context, _) => StoryPartWidget(storyPart.bStoryPart),
                                          ),
                                          type: PageTransitionType.fade
                                        )
                                      );
                                    }
                                  );
                                },
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: MyColors.mainYellow.withOpacity(0.5),
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                  ),
                                  child: Center(
                                    child: DefaultTextStyle(
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18.0,
                                        fontFamily: 'Agne',
                                      ),
                                      child: AutoSizeText(
                                        storyPart.bAnswer.translations[appState.language],
                                        textAlign: TextAlign.center,
                                        maxLines: 4,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ]
                        ),
                      ),
                    );
                  }
                ),
              if (widget.storyPart.historicalNote != null && widget.storyPart.historicalNote.translations[appState.language] != "")
                Positioned(
                  top: MediaQuery.of(context).size.height / 4 - 30,
                  right: 10,
                  child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    child: Icon(CupertinoIcons.question_circle, color: MyColors.mainBlue, size: 30,), 
                    onTap: () async {
                      showModalBottomSheet(context: context, builder: (_) {
                        return Container(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            widget.storyPart.historicalNote.translations[appState.language],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontFamily: 'Agne',
                            ),
                          )
                        ); 
                      });
                      _player = await _cache.play(
                        'story_content/shared/historical_notes/${
                          widget.storyPart.historicalNoteSound.translations[appState.language]
                        }'
                      ); 
                    }
                  )
                )
            ],
          ),
        ),
      ),
    );
  }

  // Widget endGameWidget(BuildContext context, StoryPart storyPart) {
  //   var appState = Provider.of<AppState>(context);

  //   return GestureDetector(
  //     behavior: HitTestBehavior.translucent,
  //     onTap: () {
  //       Navigator.of(context).pop();
  //     },
  //     child: Container(
  //       child: Padding(
  //         padding: const EdgeInsets.all(40.0),
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.start,
  //           children: [
  //             Container(
  //               height: MediaQuery.of(context).size.height / 5,
  //             ),
  //             storyTextWidget(appState),
  //             Expanded(child: Container(), flex: 2),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

  @override
  void dispose() {
    _player?.stop();
    super.dispose();
  }
}