import 'package:flutter/material.dart';
import 'package:ostarbeiters/constants.dart';
import 'package:ostarbeiters/models/app_state.dart';
import 'package:ostarbeiters/models/multilanguage_text.dart';
import 'package:provider/provider.dart';

class GoalsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<AppState>(context);

    return Scaffold(
      backgroundColor: MyColors.mainBlueLight,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          MultilanguageText.fromTexts(
            'Цели игры',
            'Purposes of the game',
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
                  '1. ' + MultilanguageText.fromTexts(
                    'Популяризировать тему и знания об остарбайтерах.',
                    'Popuralize the topic and knowledge about the Ostarbeiters.',
                  ).translations[appState.language],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  '2. ' + MultilanguageText.fromTexts(
                    'Представить историческую информацию в новом и популярном медиа-формате.',
                    'Present the historical information in a modern and popular media format.',
                  ).translations[appState.language],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  '3. ' + MultilanguageText.fromTexts(
                    'Научить осознанности выбора и пониманию последствий своего выбора.',
                    "Teach the awareness of one's own choices, understanding of the consequences of these choices.",
                  ).translations[appState.language],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  '4. ' + MultilanguageText.fromTexts(
                    'Вызвать эмоциональный отклик, сочувствие и сопереживания у игрока.',
                    'Cause the emotional response, empathy and sympathy of the players.',
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