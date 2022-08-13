import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  const CustomButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Material(
        borderRadius: BorderRadius.circular(17),
        elevation: 10,
        child: InkWell(
          borderRadius: BorderRadius.circular(17),
          onTap: () {},
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
