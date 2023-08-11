import 'package:flutter/material.dart';
import 'package:toku_app/components/item_numbers.dart';
import '../models/item.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<item_class> numbers = const [
    item_class(
        image: 'assets/images/numbers/number_one.png',
        enName: 'one',
        jpName: 'ichi',
        sound: 'number_one_sound.mp3'),
    item_class(
        image: 'assets/images/numbers/number_two.png',
        enName: 'two',
        jpName: 'ni',
        sound: 'number_two_sound.mp3'),
    item_class(
        image: 'assets/images/numbers/number_three.png',
        enName: 'three',
        jpName: 'san',
        sound: 'number_three_sound.mp3'),
    item_class(
        image: 'assets/images/numbers/number_four.png',
        enName: 'four',
        jpName: 'shi',
        sound: 'number_four_sound.mp3'),
    item_class(
        image: 'assets/images/numbers/number_five.png',
        enName: 'five',
        jpName: 'go',
        sound: 'number_five_sound.mp3'),
    item_class(
        image: 'assets/images/numbers/number_six.png',
        enName: 'six',
        jpName: 'roku',
        sound: 'number_six_sound.mp3'),
    item_class(
        image: 'assets/images/numbers/number_seven.png',
        enName: 'seven',
        jpName: 'shichi',
        sound: 'number_seven_sound.mp3'),
    item_class(
        image: 'assets/images/numbers/number_eight.png',
        enName: 'eight',
        jpName: 'hachi',
        sound: 'number_eight_sound.mp3'),
    item_class(
        image: 'assets/images/numbers/number_nine.png',
        enName: 'nine',
        jpName: 'ku',
        sound: 'number_nine_sound.mp3'),
    item_class(
        image: 'assets/images/numbers/number_ten.png',
        enName: 'ten',
        jpName: 'juu',
        sound: 'number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff4A322B),
        title: const Text('Numbers'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return item(
            number: numbers[index],
            color: Colors.orange,
            itemtype: 'numbers',
          );
        },
      ),
    );
  }

  List<Widget> getList(List<item_class> numbers) {
    List<Widget> itemsList = [];

    for (int i = 0; i < numbers.length; i++) {
      itemsList.add(item(
        number: numbers[i],
        color: Colors.orange,
        itemtype: 'numbers',
      ));
    }
    return itemsList;
  }
}
