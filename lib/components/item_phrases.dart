// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:toku_app/models/item.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:toku_app/models/phrases.dart';

class finalitem extends StatelessWidget {
  const finalitem(
      {super.key,
      required this.number,
      required this.color,
      required this.itemtype});
  final item_phrases number;
  final Color color;
  final String itemtype;
  @override
  Widget build(BuildContext context) {
    return (Container(
      height: 85,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  number.jptext,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(number.entext,
                    style: const TextStyle(color: Colors.white, fontSize: 18))
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
                onPressed: () {
                  AudioCache player =
                      AudioCache(prefix: 'assets/sounds/$itemtype/');
                  player.play(number.sound);
                },
                icon: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                )),
          )
        ],
      ),
    ));
  }
}
