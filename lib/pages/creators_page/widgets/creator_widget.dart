import 'package:flutter/material.dart';
import 'package:ostarbeiters/constants.dart';
import 'package:ostarbeiters/models/app_state.dart';
import 'package:ostarbeiters/models/multilanguage_text.dart';
import 'package:provider/provider.dart';

class CreatorWidget extends StatelessWidget {
  CreatorWidget({this.name, this.bio, this.imageAsset});

  final MultilanguageText name;
  final MultilanguageText bio;
  final String imageAsset;

  @override
  Widget build(BuildContext context) {
    var appState = Provider.of<AppState>(context);

    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 100,
            child: CircleAvatar(
              backgroundImage: AssetImage(imageAsset),
            )
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name.translations[appState.language], style: TextStyle(color: MyColors.mainYellow, fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                Text(bio.translations[appState.language],  style: TextStyle(color: Colors.white),)
                // Text(bio)
              ],
            ),
          )
        ],
      ),
    );
  }
}