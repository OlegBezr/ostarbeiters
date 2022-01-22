import 'package:flutter/material.dart';
import 'package:ostarbeiters/constants.dart';
import 'package:ostarbeiters/models/app_state.dart';
import 'package:ostarbeiters/models/multilanguage_text.dart';
import 'package:provider/provider.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<AppState>(context);

    return Scaffold(
      backgroundColor: MyColors.mainBlueLight,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          MultilanguageText.fromTexts(
            'Историческая справка',
            'Historical note',
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
                    'Кто такие остарбайтеры?',
                    'Who are Ostarbeiters?',
                  ).translations[appState.language],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 10),
                Text(
                  MultilanguageText.fromTexts(
                    'Жители оккупированных нацистами территорий СССР – сосланные на работу в нацистскую Германию в 1942 году для восполнения количества рабочих рук (многие мужчины ушли на фронт).',
                    'Ostarbeiters (or Easter Workers, German) were the people residing on the occupied territories of the USSR that were involuntarily sent to Nazi Germany to work in 1942 to make up for the working force of the men sent to the front lines.',
                  ).translations[appState.language],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 30),
                Text(
                  MultilanguageText.fromTexts(
                    'А что было после?',
                    "And what happened next?",
                  ).translations[appState.language],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 10),
                Text(
                  MultilanguageText.fromTexts(
                    'После принудительной репатриации в Советский Союз остарбайтеры сначала попадали в ПФЛ или ПФП (проверочно-фильтрационные лагеря/пункты) и проходили многочисленные «чистки» в НКГБ, НКВД, организации со страшным названием СМЕРШ. Суд был прост: выжил? – значит, скорее всего, сотрудничал с немцами, помогал им. Подозрения в изменах оскорбляли людей: настрадавшиеся и скучавшие по Родине, они ожидали другого приёма..',
                    'Upon their return, the Ostarbeiters first went to the PFL or PFP (verification and filtration camps/points), after which they underwent numerous "cleansings" in the NKGB, NKVD and in an organization with the terrible name SMERSH. The trial was simple: if you survived, you must have collaborated with the Germans, helped them. Suspicions of the betrayal offended people: having suffered and missed their homeland, they expected a different welcome...',
                  ).translations[appState.language],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  MultilanguageText.fromTexts(
                    'Многим также пришлось «искупать вину» на шахтах, например, в Донбассе, или в трудовой армии (форма наказания; трудовой повинности населения). Подозрительных» женщин также отправляли отбывать наказание в трудовую армию на должности поварих, поломоек. Но и тем, кого отпускали по домам, было не легче: постоянное давление и дискриминация как на государственном, так и на общественном и даже бытовом уровнях сильно усложняли жизнь.',
                    'Many Ostarbeiters had to "redeem themselves" in the mines, for example, in the Donbass, or in the labor army (a form of punishment; labor service of the population). "Suspicious" women were also sent to serve their sentences in the labor army as cooks and cleaners. But it was not easier for those who were allowed to go home: constant pressure and discrimination at both the state and public levels, and even at the household level, made life very difficult.',
                  ).translations[appState.language],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  MultilanguageText.fromTexts(
                    'Остарбайтерам были недоступны государственные должности, университетское образование: лишь тем немногим, кто смог скрыть эту часть биографии, удавалось прорваться на учёбу в ВУЗ или устроиться на работу.',
                    'Ostarbeiters were not allowed to occupy public positions and obtain university education: only those few who were able to hide the “OST” part of their biography managed to break through to study at a university or get a job.',
                  ).translations[appState.language],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  MultilanguageText.fromTexts(
                    'Дискриминация является одним из сильнейших орудий уничтожения меньшинства, что есть у общества. Остарбайтерам в такой среде жилось трудно: «В Германии нас считали врагами, а в России – изменниками».',
                    'Discrimination is one of the most powerful tools of destruction of a minority that society has. Ostarbeiters struggled to live in such an environment: "In Germany we were considered enemies, and in Russia – traitors ".',
                  ).translations[appState.language],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  MultilanguageText.fromTexts(
                    'Вечный страх и гнёт заставлял восточных рабочих скрывать и прятать, а иногда и уничтожать любые следы своего пребывания в Германии: немецкие марки с изображением Гитлера на конвертах и открытках, значки «OST» на фотокарточках, документы. Несмотря на всё это, некоторым удавалось сохранить предметы, напоминающие о горьком, но значительном периоде их жизней.',
                    'Eternal fear and oppression forced the Eastern workers to hide and hide, and sometimes destroy any traces of their years in Germany - the German stamps with the image of Hitler on envelopes and postcards, "OST" badges on photo cards, documents. Despite all this, some managed to keep objects that reminded them of a bitter but significant period of their lives.',
                  ).translations[appState.language],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  MultilanguageText.fromTexts(
                    'В 50-е годы, после смерти Сталина, гражданское положение остарбайтеров немного улучшилось. Тем не менее, лишь в 90-е годы, когда немецкий фонд «Память. Ответственность. Будущее» при участии Международного Мемориала начал выплачивать компенсации восточным рабочим при предъявлении каких-либо свидетельств пребывания в Германии, тема остовцев начала выходить на свет. В Международный Мемориал поступило около 400 тысяч писем от остарбайтеров. Так начала приоткрываться эта завеса истории...',
                    'In the 50s, after the death of Stalin, the civil position of the Ostarbeiters improved slightly. However, only in the 90s, when the German foundation “Memory. Responsibility. Future" with the support of the International Memorial began to pay reparations to the eastern workers who presented any evidence of their stay in Germany, the issue started to come to light. The International Memorial received about 400 thousand letters from the former Ostarbeiters. So, this veil of history began to open...',
                  ).translations[appState.language],
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 10),
              ]
            )
          )
        )
      )
    );
  }
}