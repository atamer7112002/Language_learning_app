import 'package:flutter/material.dart';

import '../components/item_numbers.dart';
import '../models/item.dart';

class colors_page extends StatelessWidget {
  const colors_page({super.key});

  final List<item_class> colors = const [
    item_class(
      sound: 'black.wav',
      image: 'assets/images/colors/color_black.png',
      jpName: 'Burakku',
      enName: 'black',
    ),
    item_class(
        sound: 'brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'brown'),
    item_class(
        sound: 'gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gure',
        enName: 'gray'),
    item_class(
        sound: 'dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Hokori ppi kiiro',
        enName: 'dusty yellow'),
    item_class(
        sound: 'green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'green'),
    item_class(
        sound: 'red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'red'),
    item_class(
        sound: 'yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'Kirro',
        enName: 'yellow'),
    item_class(
        sound: 'white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiro',
        enName: 'white'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff4A322B),
        title: const Text('Colors'),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return item(
            number: colors[index],
            color: Colors.purple,
            itemtype: 'colors',
          );
        },
      ),
    );
  }

  /* List<Widget> getList(List<item_class> numbers) {
    List<Widget> itemsList = [];

    for (int i = 0; i < numbers.length; i++) {
      itemsList.add(item(
        number: numbers[i],
        color: Colors.green,
        itemtype: 'colors',
      ));
    }
    return itemsList;
  }*/
}
