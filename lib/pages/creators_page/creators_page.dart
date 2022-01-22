import 'package:flutter/material.dart';
import 'package:ostarbeiters/constants.dart';
import 'package:ostarbeiters/models/app_state.dart';
import 'package:ostarbeiters/models/multilanguage_text.dart';
import 'package:ostarbeiters/pages/creators_page/widgets/creator_widget.dart';
import 'package:provider/provider.dart';

class CreatorsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<AppState>(context);

    return Scaffold(
      backgroundColor: MyColors.mainBlueLight,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          MultilanguageText.fromTexts(
            'О создателях',
            'About the creators',
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
                SizedBox(height: 10),
                Text(
                  MultilanguageText.fromTexts(
                    'Идея игры появилась и развивалась в период нашего обучения в Школе "Летово", поэтому все создатели проекта являются или являлись учащимися данной школы.',
                    'The game idea was born and developed during our studying at "Letovo School", which is why all the creators either were or are the school students.',
                  ).translations[appState.language],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                Text(
                  MultilanguageText.fromTexts('Задумка', 'Concept').translations[appState.language],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Divider(color: Colors.white,),
                SizedBox(height: 10),
                CreatorWidget(
                  name: MultilanguageText.fromTexts('Елизавета Золототрубова', 'Elizaveta Zolototrubova'),
                  bio:  MultilanguageText.fromTexts(
                    'Зачинатель и участница многих исторических и социальных проектов, таких, как статья об остарбайтерах "Полвека молчания" (см. раздел "Больше об остарбайтерах"). Инициатор проекта создания игры-новеллы "Остарбайтеры".',
                    'The creator and participant of multiple historical and social projects, such as the article about the Ostarbeiters called "Half a century of silence" (see the panel "More on the Ostarbeiters"). The initiator of the game-novella "Ostarbeiters".',
                  ),
                  imageAsset: 'assets/images/creators/lisa.png',
                ),
                SizedBox(height: 20),
                CreatorWidget(
                  name: MultilanguageText.fromTexts('Анита Шмакова', 'Anita Shmakova'),
                  bio: MultilanguageText.fromTexts(
                    'Зачинатель и участница многочисленных социальных проектов, связанных с Великой Отечественной войной, а также с периодом Большого террора и массовых репрессий.',
                    'The creator and participant of multiple social projects about the Great Patriotic War (1941-1945 WWII) and the period of Great Terror and mass repressions.'
                  ),
                  imageAsset: 'assets/images/creators/anita.png',
                ),
                SizedBox(height: 20),
                CreatorWidget(
                  name: MultilanguageText.fromTexts('Индира Абзалова', 'Indira Abzalova'),
                  bio: MultilanguageText.fromTexts(
                    'Зачинатель и участница многих социальных проектов, в числе которых постановка спектакля "Осколки", основанного на реальных исторических событиях, и участие в разработке игры-новеллы "Остарбайтеры".',
                    'The creator and participant of multiple social projects, including the direction of the play "Fragments" based on true historical eventы (1917 events in Russia). The participant of the creation of the game-novella "Ostarbeiters".'
                  ),
                  imageAsset: 'assets/images/creators/indira.png'
                ),
                SizedBox(height: 30),
                Text(
                  MultilanguageText.fromTexts('Разработка', 'Development').translations[appState.language],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Divider(color: Colors.white,),
                SizedBox(height: 10),
                CreatorWidget(
                  name: MultilanguageText.fromTexts('Олег Безрукавников', 'Oleg Bezrukavnikov'),
                  bio: MultilanguageText.fromTexts(
                    'Разработчик мобильных кроссплатформенных приложений таких как Vibecheck, TillWeMeetAgain и Ostarbeiters',
                    'The developer of mobile cross platform apps such as Vibecheck, TillWeMeetAgain, and Ostarbeiters'
                  ),
                  imageAsset: 'assets/images/creators/oleg.png'
                ),
                SizedBox(height: 30),
                Text(
                  MultilanguageText.fromTexts('Перевод', 'Translation').translations[appState.language],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Divider(color: Colors.white,),
                SizedBox(height: 10),
                CreatorWidget(
                  name: MultilanguageText.fromTexts('Вероника Казак', 'Veronika Kazak'),
                  bio: MultilanguageText.fromTexts(
                    'Перевод историй на английский язык',
                    'Translation into English'
                  ),
                  imageAsset: 'assets/images/creators/nika.png'
                ),
                SizedBox(height: 30),
                Text(
                  MultilanguageText.fromTexts('Озвучка', 'Voice Actors').translations[appState.language],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Divider(color: Colors.white,),
                SizedBox(height: 10),
                CreatorWidget(
                  name: MultilanguageText.fromTexts('Евгений Кирин', 'Evgenii Kirin'),
                  bio: MultilanguageText.fromTexts(
                    'Озвучивает персонажа Антона Зайченко',
                    'Voices the character Anton Zhaychenko'
                  ),
                  imageAsset: 'assets/images/creators/zhenya.png'
                ),
                SizedBox(height: 20),
                CreatorWidget(
                  name: MultilanguageText.fromTexts('Ольга Захарова', 'Olga Zakharova'),
                  bio: MultilanguageText.fromTexts(
                    'Озвучивает персонажа Александру Макаревич',
                    'Voices the character Alexandra Makarevich'
                  ),
                  imageAsset: 'assets/images/creators/olya.png'
                ),
                SizedBox(height: 20),
                CreatorWidget(
                  name: MultilanguageText.fromTexts('Егор Лазарев', 'Yegor Lazarev'),
                  bio: MultilanguageText.fromTexts(
                    'Озвучивает персонажа Никиту Долмаченко',
                    'Voices the character Nikita Dolmachenko'
                  ),
                  imageAsset: 'assets/images/creators/egor.png'
                ),
                SizedBox(height: 20),
                CreatorWidget(
                  name: MultilanguageText.fromTexts('Антон Рзаев', 'Anton Rzaev'),
                  bio: MultilanguageText.fromTexts(
                    'Озвучивает персонажа Андрея Петренко',
                    'Voices the character Andrey Petrenko'
                  ),
                  imageAsset: 'assets/images/creators/anton.png'
                ),
                SizedBox(height: 20),
                CreatorWidget(
                  name: MultilanguageText.fromTexts('Мария Зотова', 'Maria Zotova'),
                  bio: MultilanguageText.fromTexts(
                    'Озвучивает персонажа Марию Колесниченко',
                    'Voices the character Maria Kolesnichenko'
                  ),
                  imageAsset: 'assets/images/creators/masha.png'
                ),
                SizedBox(height: 20),
                CreatorWidget(
                  name: MultilanguageText.fromTexts('Варвара Миронова', 'Varvara Mironova'),
                  bio: MultilanguageText.fromTexts(
                    'Озвучивает персонажа Ульяну Савченко',
                    'Voices the character Ulyana Savchenko'
                  ),
                  imageAsset: 'assets/images/creators/varya.png'
                ),
                SizedBox(height: 20),
                CreatorWidget(
                  name: MultilanguageText.fromTexts('Кирилл Путин', 'Kirill Putin'),
                  bio: MultilanguageText.fromTexts(
                    'Озвучивает персонажа Ивана Клименко',
                    'Voices the character Ivan Klimenko'
                  ),
                  imageAsset: 'assets/images/creators/kirill.png'
                ),
                SizedBox(height: 20),
                CreatorWidget(
                  name: MultilanguageText.fromTexts('Екатерина Игнатенко', 'Ekaterina Ignatenko'),
                  bio: MultilanguageText.fromTexts(
                    'Озвучивает персонажа Надежду Соловьёву',
                    'Voices the character Nadezhda Solovyova'
                  ),
                  imageAsset: 'assets/images/creators/katya.png'
                ),
                SizedBox(height: 30),
                Text(
                  MultilanguageText.fromTexts('Иллюстрации', 'Artwork').translations[appState.language],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Divider(color: Colors.white,),
                SizedBox(height: 10),
                CreatorWidget(
                  name: MultilanguageText.fromTexts('Полина Мусина', 'Polina Musina'),
                  bio: MultilanguageText.fromTexts(
                    'Художник',
                    'Artist'
                  ),
                  imageAsset: 'assets/images/creators/polina.png'
                ),
                SizedBox(height: 20),
                CreatorWidget(
                  name: MultilanguageText.fromTexts('Ульяна Кобылкина', 'Ulyana Kobylkina'),
                  bio: MultilanguageText.fromTexts(
                    'Художник',
                    'Artist'
                  ),
                  imageAsset: 'assets/images/creators/ulya.png'
                ),
                SizedBox(height: 20),
                CreatorWidget(
                  name: MultilanguageText.fromTexts('Алиса Голованова', 'Alisa Golovanova'),
                  bio: MultilanguageText.fromTexts(
                    'Художница',
                    'Artist'
                  ),
                  imageAsset: 'assets/images/creators/alisa.png'
                ),
                SizedBox(height: 20),
                SizedBox(height: 20),
                CreatorWidget(
                  name: MultilanguageText.fromTexts('Таисия Коновальская', 'Taisia Konovalskaya'),
                  bio: MultilanguageText.fromTexts(
                    'Художница',
                    'Artist'
                  ),
                  imageAsset: 'assets/images/creators/taya.png'
                ),
                SizedBox(height: 20),
                SizedBox(height: 20),
                CreatorWidget(
                  name: MultilanguageText.fromTexts('Анна Жукова', 'Anna Zhukova'),
                  bio: MultilanguageText.fromTexts(
                    'Художница',
                    'Artist'
                  ),
                  imageAsset: 'assets/images/creators/anya.png'
                ),
                SizedBox(height: 20),
                SizedBox(height: 20),
                CreatorWidget(
                  name: MultilanguageText.fromTexts('Полина Якубова', 'Polina Yakubova'),
                  bio: MultilanguageText.fromTexts(
                    'Художник',
                    'Artist'
                  ),
                  imageAsset: 'assets/images/creators/polina_ya.png'
                ),
                SizedBox(height: 20),
              ]
            ),
          ),
        ),
      ),
    );
  }
}