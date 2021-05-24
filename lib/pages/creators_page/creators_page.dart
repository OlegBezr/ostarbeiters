import 'package:flutter/material.dart';
import 'package:ostarbeiters/constants.dart';
import 'package:ostarbeiters/pages/creators_page/widgets/creator_widget.dart';

class CreatorsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.mainBlueLight,
      appBar: AppBar(
        centerTitle: true,
        title: Text('О создателях'),
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
                  'Идея игры появилась и развивалась в период нашего обучения в Школе "Летово", поэтому все создатели проекта являются или являлись учащимися данной школы.',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                CreatorWidget(
                  name: 'Елизавета Золототрубова',
                  bio: 'Зачинатель и участница многих исторических и социальных проектов, таких, как статья об остарбайтерах "Полвека молчания" (см. раздел "Больше об остарбайтерах"). Инициатор проекта создания игры-новеллы "Остарбайтеры".',
                  imageAsset: 'assets/images/creators/lisa.png',
                ),
                SizedBox(height: 20),
                CreatorWidget(
                  name: 'Анита Шмакова',
                  bio: 'Зачинатель и участница многочисленных социальных проектов, связанных с Великой Отечественной войной, а также с периодом Большого террора и массовых репрессий.',
                  imageAsset: 'assets/images/creators/anita.png',
                ),
                SizedBox(height: 20),
                CreatorWidget(
                  name: 'Индира Абзалова',
                  bio: 'Зачинатель и участница многих социальных проектов, в числе которых постановка спектакля "Осколки", основанного на реальных исторических событиях, и участие в разработке игры-новеллы "Остарбайтеры".',
                  imageAsset: 'assets/images/creators/indira.png'
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