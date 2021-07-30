import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:ostarbeiters/models/app_state.dart';
import 'package:ostarbeiters/models/languages.dart';
import 'package:provider/provider.dart';
import 'pages/menu_page/menu_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIOverlays(
  //   [SystemUiOverlay.bottom]
  // );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppState(language: Languages.ru, soundOn: false),),
        Provider(create: (context) => AudioCache(),)
      ],
      builder: (context, widget) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            textTheme: TextTheme(
              bodyText1: TextStyle(
                fontSize: 16,
              ),
            ),
            // textButtonTheme: TextButtonThemeData(
            //   style: TextButton.styleFrom(
            //     primary: Colors.black,
            //     textStyle:  TextStyle(
            //       fontSize: 20
            //     ),
            //   )
            // )
          ),
          home: MenuPage(),
        );
      }
    );
  }
}