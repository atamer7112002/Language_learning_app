// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:toku_app/models/item.dart';
import 'package:audioplayers/audioplayers.dart';

class item extends StatelessWidget {
  const item(
      {super.key,
      required this.number,
      required this.color,
      required this.itemtype});
  final item_class number;
  final Color color;
  final String itemtype;
  @override
  Widget build(BuildContext context) {
    return (Container(
      height: 85,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color.fromARGB(255, 247, 241, 222),
            child: Image.asset(
              number.image,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(number.enName,
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
