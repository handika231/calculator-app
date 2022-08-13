import 'package:function_tree/function_tree.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var text = "".obs;
  var result = "".obs;

  void changeValue(String value) {
    switch (value) {
      case 'Clear':
        text.value = text.substring(0, text.value.length - 1);
        break;
      case 'AllClear':
        text.value = "";
        result.value = "";
        break;
      default:
        text.value += value;
        break;
    }
  }

  void calculate() {
    try {
      result.value = '${text.value.interpret().toInt()}';
    } catch (e) {
      result.value = 'SOMETHING ERROR';
    }
  }
}
