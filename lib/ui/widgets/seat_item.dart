import 'package:airplane_app/shared/theme.dart';
import 'package:flutter/material.dart';

class SeatItem extends StatelessWidget {
  const SeatItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        color: kUnavailableColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
    );
  }
}
