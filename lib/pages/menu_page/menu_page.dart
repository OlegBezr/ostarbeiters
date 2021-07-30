import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ostarbeiters/models/app_state.dart';
import 'package:ostarbeiters/models/languages.dart';
import 'package:ostarbeiters/models/multilanguage_text.dart';
import 'package:ostarbeiters/pages/menu_page/widgets/drawer.dart';
import 'package:ostarbeiters/pages/stories_list_page/stories_list_page.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(
      [
      ]
    );
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: Colors.transparent,
    //   statusBarIconBrightness: Brightness.dark,
    //   statusBarBrightness: Brightness.dark
    // ));

    var appState = Provider.of<AppState>(context);

    return WillPopScope(
      onWillPop: () {
        
      },
      child: Scaffold(
        backgroundColor: MyColors.mainYellow,
        drawer: Container(
          width: MediaQuery.of(context).size.width * 4 / 5,
          child: MenuPageDrawer()
        ),
        body: Builder(
          builder: (context) {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          iconSize: 40,
                          icon: Icon(Icons.menu),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          }
                        ),
                        Expanded(child: Container()),
                        GestureDetector(
                          child: Container(
                            width: 50,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              border: Border.all(

                              )
                            ),
                            child: Center(
                              child: Text(
                                MultilanguageText.fromTexts('RU', 'EN').translations[appState.language],
                              ),
                            ),
                          ),
                          onTap: () {
                            appState.updateLanguage(appState.language == Languages.ru ? Languages.en : Languages.ru);
                          },
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(child: Container()),
                        GestureDetector(
                          child: Container(
                            width: 50,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              border: Border.all(

                              )
                            ),
                            child: Icon(appState.soundOn? Icons.volume_up: Icons.volume_mute)
                          ),
                          onTap: () {
                            appState.changeSoundOn();
                          },
                        )
                      ],
                    ),
                    Expanded(child: Container(), flex: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Icon(
                        //   Icons.info_outline,
                        //   color: Colors.transparent,
                        // ),
                        Text(
                          MultilanguageText.fromTexts('Остарбайтеры', 'Ostarbeiters').translations[appState.language],
                          style:  TextStyle(
                            fontSize: 28
                          ),
                        ),
                        // Icon(
                        //   Icons.info_outline,
                        //   size: 20,
                        // )
                      ],
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Text(
                        MultilanguageText.fromTexts(
                          'Личные истории людей, угнанных на работы в нацистскую Германию', 
                          'Personal stories of people forced to work in Nazi Germany during the World War 2'
                        ).translations[appState.language],
                        style:  TextStyle(
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 15),
                    MaterialButton(
                      color: Colors.white,
                      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                      minWidth: 120,
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
                        MultilanguageText.fromTexts('Начать', 'Start').translations[appState.language],
                        style:  TextStyle(
                          fontSize: 20
                        ),
                      )
                    ),
                    // SizedBox(height: 100),
                    // MaterialButton(
                    //   padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                    //   minWidth: 80,
                    //   // shape: RoundedRectangleBorder(
                    //   //   borderRadius: BorderRadius.circular(10),
                    //   //   side: BorderSide()
                    //   // ),
                    //   onPressed: () {
                    //     Navigator.of(context).push(
                    //       MaterialPageRoute(builder: (context) {
                    //         return StoriesListPage();
                    //       })
                    //     );
                    //   }, 
                    //   child: Text(
                    //     MultilanguageText.fromTexts('Историческая справка', 'Historical context').translations[appState.language],
                    //     style:  TextStyle(
                    //       fontSize: 18
                    //     ),
                    //     textAlign: TextAlign.center,
                    //   )
                    // ),
                    Expanded(child: Container(), flex: 2),
                    MaterialButton(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      padding: EdgeInsets.zero,
                      child: Text(
                        MultilanguageText.fromTexts(
                          'Историческая справка', 
                          'Historical context'
                        ).translations[appState.language],
                        style:  TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.underline
                        ),
                        textAlign: TextAlign.center,
                      ),
                      onPressed: () {

                      },
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 50, 0, 20),
                      child: MaterialButton(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        child: Container(
                          height: 50,
                          child: Image.asset(
                            'assets/icons/letovo_icon_and_text.png'
                          ),
                        ),
                        onPressed: () async {
                          await launch('https://letovo.ru/');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        )
      ),
    );
  }
}