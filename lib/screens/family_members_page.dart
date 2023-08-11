import 'package:flutter/material.dart';

import '../components/item_numbers.dart';
import '../models/item.dart';

class family_members extends StatelessWidget {
  const family_members({super.key});

  final List<item_class> numbers = const [
    item_class(
        image: 'assets/images/family_members/family_daughter.png',
        enName: 'daughter',
        jpName: 'Musume',
        sound: 'daughter.wav'),
    item_class(
        image: 'assets/images/family_members/family_father.png',
        enName: 'father',
        jpName: 'chichioya',
        sound: 'father.wav'),
    item_class(
        image: 'assets/images/family_members/family_grandfather.png',
        enName: 'grand father',
        jpName: 'Ojisan',
        sound: 'grand father.wav'),
    item_class(
        image: 'assets/images/family_members/family_grandmother.png',
        enName: 'grand mother',
        jpName: 'sobo',
        sound: 'grand mother.wav'),
    item_class(
        image: 'assets/images/family_members/family_mother.png',
        enName: 'mother',
        jpName: 'hahoya',
        sound: 'mother.wav'),
    item_class(
        image: 'assets/images/family_members/family_older_brother.png',
        enName: 'older brother',
        jpName: 'nisan',
        sound: 'older bother.wav'),
    item_class(
        image: 'assets/images/family_members/family_older_sister.png',
        enName: 'older sister',
        jpName: 'Ane',
        sound: 'older sister.wav'),
    item_class(
        image: 'assets/images/family_members/family_son.png',
        enName: 'son',
        jpName: 'musuko',
        sound: 'son.wav'),
    item_class(
        image: 'assets/images/family_members/family_younger_brother.png',
        enName: 'younger brother',
        jpName: 'ototo',
        sound: 'younger brohter.wav'),
    item_class(
        image: 'assets/images/family_members/family_younger_sister.png',
        enName: 'younger sister',
        jpName: 'imoto',
        sound: 'younger sister.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff4A322B),
        title: const Text('Family Members'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return item(
            number: numbers[index],
            color: Colors.green,
            itemtype: 'family_members',
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
        color: Colors.green,
        itemtype: 'family_members',
      ));
    }
    return itemsList;
  }
}
