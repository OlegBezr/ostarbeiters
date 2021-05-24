import 'package:flutter/material.dart';
import 'package:ostarbeiters/constants.dart';

class CreatorWidget extends StatelessWidget {
  CreatorWidget({this.name, this.bio, this.imageAsset});

  final String name;
  final String bio;
  final String imageAsset;

  @override
  Widget build(BuildContext context) {
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
                Text(name, style: TextStyle(color: MyColors.mainYellow, fontWeight: FontWeight.bold),),
                SizedBox(height: 5,),
                Text(bio,  style: TextStyle(color: Colors.white),)
                // Text(bio)
              ],
            ),
          )
        ],
      ),
    );
  }
}