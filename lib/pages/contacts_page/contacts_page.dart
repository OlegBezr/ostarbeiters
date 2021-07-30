import 'package:flutter/material.dart';
import 'package:ostarbeiters/constants.dart';
import 'package:ostarbeiters/models/app_state.dart';
import 'package:ostarbeiters/models/multilanguage_text.dart';
import 'package:provider/provider.dart';

class ContactsPage extends StatelessWidget {
  final String _bullet = "\u2022" + ' ';

  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<AppState>(context);

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: MyColors.mainBlueLight,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            MultilanguageText.fromTexts(
              'Написать нам',
              'Contact us',
            ).translations[appState.language],
          ),
          backgroundColor: MyColors.mainBlue,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    MultilanguageText.fromTexts(
                      'Если вы хотите связаться с авторами проекта, чтобы:',
                      'If you would like to contact us to:',
                    ).translations[appState.language],
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    _bullet + MultilanguageText.fromTexts(
                      'оставить отзыв',
                      'make a review',
                    ).translations[appState.language],
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    _bullet + MultilanguageText.fromTexts(
                      'поучаствовать в проекте',
                      "participate in the project",
                    ).translations[appState.language],
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    _bullet + MultilanguageText.fromTexts(
                      'предоставить какую-либо информацию, которая может быть полезной авторам проекта',
                      'share some information that can be valuable for the project creators',
                    ).translations[appState.language],
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    _bullet + MultilanguageText.fromTexts(
                      'или по какой-то другой причине',
                      'or for some other reason',
                    ).translations[appState.language],
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  SelectableText(
                    MultilanguageText.fromTexts(
                      'пишите на почту ostarbeitery@gmail.com',
                      'please email us on ostarbeitery@gmail.com',
                    ).translations[appState.language],
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  SelectableText(
                    MultilanguageText.fromTexts(
                      'или на WhatsApp +79254520881',
                      'or leave a WhatsApp message on +79254520881',
                    ).translations[appState.language],
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ]
              )
            )
          )
        )
      ),
    );
  }
}