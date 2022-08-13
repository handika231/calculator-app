import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/app_pages.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: const Color(0xff243441),
        primaryColor: const Color(0xffEB8034),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: Colors.white60,
          brightness: Brightness.dark,
        ),
      ),
      title: "Calculator App",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
