import 'package:get/get.dart';
import 'login_index.dart';


class LoginController extends GetxController {
  ///Password visibility protocol
  var isObscured = true.obs;

  ///Clear textField when after any value appears
  var clearField = true.obs;

  ///instance of LoginState
  final state = LoginState();

  buttonLoginProtocol() {

  }

  googleLoginProtocol() {}

  appleLoginProtocol() {}

  LoginController();
}
