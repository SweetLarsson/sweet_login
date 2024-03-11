
import 'package:get/get.dart';

import 'login_controller.dart';

class LoginPageBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(LoginController());
    // TODO: implement dependencies
  }
}