import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../modules/home/controllers/home_controller.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final String value;
  CustomButton({Key? key, required this.text, required this.value})
      : super(key: key);
  final controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Material(
        color: context.theme.backgroundColor,
        borderRadius: BorderRadius.circular(17),
        elevation: 10,
        child: InkWell(
          borderRadius: BorderRadius.circular(17),
          onTap: () {
            controller.changeValue(value);
          },
          child: SizedBox(
            height: 70,
            width: 70,
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
