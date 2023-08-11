import 'package:flutter/material.dart';
import 'package:toku_app/screens/colors_page.dart';
import 'package:toku_app/screens/family_members_page.dart';
import 'package:toku_app/screens/numbers_page.dart';
import 'package:toku_app/screens/phrases_page.dart';
import '../components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xffFFF4DA),
        appBar: AppBar(
          backgroundColor: const Color(0xff4A322B),
          title: const Text('Toku'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Category(
              text: 'Numbers',
              color: Colors.orange,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const NumbersPage();
                }));
              },
            ),
            Category(
              text: 'Family Members',
              color: Colors.green,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const family_members();
                }));
              },
            ),
            Category(
              text: 'Colors',
              color: Colors.purple,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const colors_page();
                }));
              },
            ),
            Category(
              text: 'Phrases',
              color: Colors.blueAccent,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const phrases_page();
                }));
              },
            )
          ],
        ),
      ),
    ));
  }
}
