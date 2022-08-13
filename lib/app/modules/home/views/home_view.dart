import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../widgets/custom_button.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  final ThemeData dark = ThemeData(
    backgroundColor: const Color(0xff243441),
    primaryColor: const Color(0xffEB8034),
    colorScheme: ColorScheme.fromSwatch(
      accentColor: Colors.white60,
      brightness: Brightness.dark,
    ),
  );
  final ThemeData light = ThemeData(
    backgroundColor: const Color(0xffEBEBEB),
    primaryColor: const Color(0xffEB8034),
    colorScheme: ColorScheme.fromSwatch(
      accentColor: Colors.black38,
      brightness: Brightness.light,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                padding: const EdgeInsets.only(right: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      '5768',
                      style: TextStyle(
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '90 + 89',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: context.theme.colorScheme.secondary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CustomButton(text: '^'),
                      const CustomButton(text: 'C'),
                      const CustomButton(text: 'AC'),
                      Flexible(
                        child: Material(
                          color: context.theme.primaryColor,
                          borderRadius: BorderRadius.circular(17),
                          elevation: 10,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(17),
                            onTap: () {
                              Get.changeTheme(
                                Get.isDarkMode ? light : dark,
                              );
                            },
                            child: const SizedBox(
                              height: 70,
                              width: 70,
                              child: Center(
                                child: Icon(Icons.color_lens),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CustomButton(text: '('),
                      CustomButton(text: ')'),
                      CustomButton(text: '%'),
                      CustomButton(text: ':'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CustomButton(text: '7'),
                      CustomButton(text: '8'),
                      CustomButton(text: '9'),
                      CustomButton(text: 'x'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CustomButton(text: '4'),
                      CustomButton(text: '5'),
                      CustomButton(text: '6'),
                      CustomButton(text: '-'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CustomButton(text: '1'),
                      CustomButton(text: '2'),
                      CustomButton(text: '3'),
                      CustomButton(text: '+'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CustomButton(text: '0'),
                      const CustomButton(text: '.'),
                      Expanded(
                        child: Material(
                          color: context.theme.primaryColor,
                          borderRadius: BorderRadius.circular(17),
                          elevation: 10,
                          child: InkWell(
                            borderRadius: BorderRadius.circular(17),
                            onTap: () {},
                            child: const SizedBox(
                              height: 70,
                              width: 70,
                              child: Center(
                                child: Text(
                                  '=',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
