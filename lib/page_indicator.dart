import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  final bool isActive;
  const PageIndicator({super.key, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: isActive ? Color(0xffFF7622) : Color(0xffFFE1CE),
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}
