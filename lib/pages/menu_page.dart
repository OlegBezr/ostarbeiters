import 'package:flutter/material.dart';
import 'package:ostarbeiters/models/app_state.dart';
import 'package:ostarbeiters/models/languages.dart';
import 'package:ostarbeiters/models/multilanguage_text.dart';
import 'package:ostarbeiters/pages/stories_list_page/stories_list_page.dart';
import 'package:provider/provider.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<AppState>(context);

    return WillPopScope(
      onWillPop: () {
        
      },
      child: Scaffold(
        appBar: AppBar(
          
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  MultilanguageText.fromTexts('Остарбайтеры', 'Ostarbeiters').translations[appState.language]
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text(
                  MultilanguageText.fromTexts('Историческая Справка', 'Historical Background').translations[appState.language]
                ),
                onTap: () {
                },
              ),
              ListTile(
                title: Text(
                  MultilanguageText.fromTexts('Об Игре', 'About The Game').translations[appState.language]
                ),
                onTap: () {
                },
              ),
              ListTile(
                title: Text(
                  MultilanguageText.fromTexts('Создатели', 'The Creators').translations[appState.language]
                ),
                onTap: () {
                },
              ),
              ListTile(
                title: Text(
                  MultilanguageText.fromTexts('Написать нам', 'Support').translations[appState.language]
                ),
                onTap: () {
                },
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(child: Container()),
                  IconButton(
                    iconSize: 40,
                    icon: Icon(Icons.language),
                    onPressed: () {
                      appState.update(appState.language == Languages.ru ? Languages.en : Languages.ru);
                    }
                  )
                  // OutlinedButton(onPressed: onPressed)
                ],
              ),
              Expanded(child: Container(), flex: 1),
              MaterialButton(
                minWidth: 200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide()
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) {
                      return StoriesListPage();
                    })
                  );
                }, 
                child: Text(
                  MultilanguageText.fromTexts('Играть', 'Play').translations[appState.language],
                  style:  TextStyle(
                    fontSize: 28
                  ),
                )
              ),
              Expanded(child: Container(), flex: 2),
            ],
          ),
        )
      ),
    );
  }
}