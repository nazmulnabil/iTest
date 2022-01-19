import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemQuestions extends GetView {
  final String? text;
  ItemQuestions(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: (() {
          print(text);
        }),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
