import 'package:get/get.dart';

class StateController extends GetxController {
  static StateController get to => Get.find();
  var gameState = 0.obs;
  var userNumber = 0.obs;
  RxBool takenPhoto = false.obs;
  RxBool agreeRules = false.obs;
}
