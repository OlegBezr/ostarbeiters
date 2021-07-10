import 'package:flutter/material.dart';
import 'package:ostarbeiters/constants.dart';
import 'package:ostarbeiters/models/app_state.dart';
import 'package:ostarbeiters/models/multilanguage_text.dart';
import 'package:provider/provider.dart';

class RulesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<AppState>(context);

    return Scaffold(
      backgroundColor: MyColors.mainBlueLight,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          MultilanguageText.fromTexts(
            'Правила игры',
            'Game rules',
          ).translations[appState.language],
        ),
        backgroundColor: MyColors.mainBlue,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  String.fromCharCode(0x2022) + ' ' + MultilanguageText.fromTexts(
                    'Вы выбираете персонажа, от имени которого будете играть. Вам достаётся история жизни вашего персонажа.',
                    'You choose a character whose role you will proceed with. You receive the story of life of your character.',
                  ).translations[appState.language],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  String.fromCharCode(0x2022) + ' ' + MultilanguageText.fromTexts(
                    'Шаг за шагом вы исследуете судьбу героя. Чтобы перейти к следующему шагу, нажмите кнопку "Далее".',
                    'Step by step you explore the fate of the character. To go to the next step, press the button "Next".',
                  ).translations[appState.language],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  String.fromCharCode(0x2022) + ' ' + MultilanguageText.fromTexts(
                    'На некоторых этапах игры вам предоставляется выбор. В зависимости от выбранного вами варианта зависит дальнейшая судьба вашего героя. Чтобы сделать выбор, нажмите на один из вариантов.',
                    'At some points of the game you are given a choice. The future of your character depends on your choices. To make a choice, press on one of the options.',
                  ).translations[appState.language],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  String.fromCharCode(0x2022) + ' ' + MultilanguageText.fromTexts(
                    'На некоторых этапах игры вы можете просмотреть историческую справку, которая выплывает на экране во время игры.  Чтобы просмотреть историческую справку, нажмите на соответствующую кнопку.',
                    'At some points of the game you can view a historical note which appears on the screen during the game. To view the historical note, press this button.',
                  ).translations[appState.language],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  String.fromCharCode(0x2022) + ' ' + MultilanguageText.fromTexts(
                    'Чтобы закончить игру преждевременно, нажмите на кнопку "Меню".',
                    'To stop playing when the story is not finished, press the menu button.',
                  ).translations[appState.language],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 20),
              ]
            )
          )
        )
      )
    );
  }
}