import 'package:flutter/material.dart';
import 'package:toku_app/components/item_phrases.dart';
import 'package:toku_app/models/phrases.dart';

class phrases_page extends StatelessWidget {
  const phrases_page({super.key});

  final List<item_phrases> phrases = const [
    item_phrases(
        sound: 'are_you_coming.wav',
        entext: 'are you coming?',
        jptext: 'kuru no?'),
    item_phrases(
        sound: 'dont_forget_to_subscribe.wav',
        entext: 'dont forget to subscribe',
        jptext: 'touroku wo wasurenaide kudasai'),
    item_phrases(
        sound: 'how_are_you_feeling.wav',
        entext: 'how are you feeling ?',
        jptext: 'choushi wa dou desu ka?'),
    item_phrases(
        sound: 'i_love_anime.wav',
        entext: 'i love anime',
        jptext: 'anime ga suki desu'),
    item_phrases(
        sound: 'i_love_programming.wav',
        entext: 'i love programming',
        jptext: 'programming ga daisuki'),
    item_phrases(
        sound: 'programming_is_easy.wav',
        entext: 'programming is easy',
        jptext: 'programming wa kantan desu'),
    item_phrases(
        sound: 'what_is_your_name.wav',
        entext: 'what is your name',
        jptext: 'onamae wa nan desu ka'),
    item_phrases(
        sound: 'where_are_you_going.wav',
        entext: 'where are you going ?',
        jptext: 'doko ni ikimasu ka ?'),
    item_phrases(
        sound: 'yes_im_coming.wav',
        entext: 'yes im coming',
        jptext: 'hai, ikimasu'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff4A322B),
        title: const Text('Phrases'),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) {
          return finalitem(
            number: phrases[index],
            color: const Color.fromARGB(255, 39, 82, 176),
            itemtype: 'phrases',
          );
        },
      ),
    );
  }
}
