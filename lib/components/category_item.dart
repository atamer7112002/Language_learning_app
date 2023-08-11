import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key, this.text, this.color, this.onTap});
  final String? text;
  final Color? color;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: (Container(
          height: 60,
          color: color,
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 18),
            child: Text(
              text!,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ))),
    );
  }
}
