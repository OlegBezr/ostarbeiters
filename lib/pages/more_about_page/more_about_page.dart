import 'package:flutter/material.dart';
import 'package:ostarbeiters/constants.dart';
import 'package:ostarbeiters/models/app_state.dart';
import 'package:ostarbeiters/models/multilanguage_text.dart';
import 'package:provider/provider.dart';

class MoreAboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<AppState>(context);

    return Scaffold(
      backgroundColor: MyColors.mainBlueLight,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          MultilanguageText.fromTexts(
            'Больше об остарбайтерах',
            'More on Ostarbeiters',
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
                  MultilanguageText.fromTexts(
                    'Больше об остарбайтерах',
                    'More on Ostarbeiters',
                  ).translations[appState.language],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 30),
                Text(
                  MultilanguageText.fromTexts(
                    'Статья об остовцах Елизаветы Золототрубовой, вдохновившая создателей игры-новеллы "Остарбайтеры".',
                    'Article about the Ostarbeiters by Elizaveta Zolototrubova, which inspired the creation of the game-novella "Ostarbeiters".'
                  ).translations[appState.language],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 30),
                Container(
                  color: Colors.green,
                  height: 30,
                ),
                SizedBox(height: 30),
                SelectableText(
                  MultilanguageText.fromTexts(
                    '''Изданная международныма мемориалом, книга рассказывает о том, что остарбайтеры пережили в неволе и что им пришлось испытать после возвращения на родину.\nМихайлов, Николай, Ирина Щербакова, Алёна Козлова, and Ирина Островская. “Читать ‘Знак не сотрется. Судьбы остарбайтеров в письмах, воспоминаниях и устных рассказах’.” Bookmate, n.d. ru.bookmate.com/books/v3UnmPFD\n\nСтатья об остарбайтерах на Lenta.ru “Из русской свиньи я превратилась в немецкую подстилку” Угнанные в Германию советские люди выжили, чтобы попасть в ад на родине.” lenta.ru/articles/2017/10/11/ostarbeiter/\n\nМатериалы об остарбайтерах доступны на сайте «Та сторона» — это сетевой архив интервью бывших остарбайтеров, военнопленных и узников немецких лагерей.\n“Та сторона: устная история остарбайтеров и военнопленных.” tastorona.su\n\nНаучно-популярный проект Международного Мемориала об истории двадцатого века и культуре исторической памяти, “Уроки истории”, также публикует матери алы по тематике. urokiistorii.ru\n\nПортал, содержащий материалы о военной истории. “Военное обозрение — военные материалы и последние новости военного мира.” warspot.ru''',
                    '''This article considers how and with the aid of which resources the memory of forced labour during World War II was constructed and recreated in the public space of Soviet and post-Soviet Ukraine.\nGrinchenko, Gelinada, and Marta D. Olynyk. "The Ostarbeiter of Nazi Germany in Soviet and Post-Soviet Ukrainian Historical Memory." Canadian Slavonic Papers / Revue Canadienne Des Slavistes 54, no. 3/4 (2012): 401-26. jstor.org/stable/23617484''',
                  ).translations[appState.language],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
                
               