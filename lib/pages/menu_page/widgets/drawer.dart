import 'package:flutter/material.dart';
import 'package:ostarbeiters/constants.dart';
import 'package:ostarbeiters/models/app_state.dart';
import 'package:ostarbeiters/models/multilanguage_text.dart';
import 'package:ostarbeiters/pages/contacts_page/contacts_page.dart';
import 'package:ostarbeiters/pages/creators_page/creators_page.dart';
import 'package:ostarbeiters/pages/goals_page/goals_page.dart';
import 'package:ostarbeiters/pages/history_page/history_page.dart';
import 'package:ostarbeiters/pages/rules_page/rules_page.dart';
import 'package:provider/provider.dart';

class MenuPageDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: MyColors.mainBlue,
        child: SafeArea(
          child: Builder(
            builder: (context) {
              var drawerTextStyle = TextStyle(
                color: Colors.white
              );
              var appState = Provider.of<AppState>(context);

              return ListView(
                padding: EdgeInsets.zero,
                children: <Widget>[
                  ListTile(
                    title: Text(
                      MultilanguageText.fromTexts('Правила игры', 'Game rules').translations[appState.language],
                      style: drawerTextStyle,
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) {
                            return RulesPage();
                          }
                        )
                      );
                    },
                  ),
                  ListTile(
                    title: Text(
                      MultilanguageText.fromTexts('Цели игры', 'Purpose of the game').translations[appState.language],
                      style: drawerTextStyle,
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) {
                            return GoalsPage();
                          }
                        )
                      );
                    },
                  ),
                  ListTile(
                    title: Text(
                      MultilanguageText.fromTexts('Больше об остарбайтерах', 'More on ostarbeiters').translations[appState.language],
                      style: drawerTextStyle,
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) {
                            return HistoryPage();
                          }
                        )
                      );
                    },
                  ),
                  ListTile(
                    title: Text(
                      MultilanguageText.fromTexts('О создателях', 'About the creators').translations[appState.language],
                      style: drawerTextStyle,
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) {
                            return CreatorsPage();
                          }
                        )
                      );
                    },
                  ),
                  ListTile(
                    title: Text(
                      MultilanguageText.fromTexts('Написать нам', 'Contact us').translations[appState.language],
                      style: drawerTextStyle,
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) {
                            return ContactsPage();
                          }
                        )
                      );
                    },
                  ),
                ],
              );
            }
          ),
        ),
      ),
    );
  }
}