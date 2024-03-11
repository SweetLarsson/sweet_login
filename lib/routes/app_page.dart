import 'package:get/get.dart';
import '../pages/login/login_index.dart';
import 'route_name.dart';

class AppPages {
  static const Start = RouteName.LoginPage;

  static final List<GetPage> Routes = [

    ///This handles the call of the first page
    GetPage(
      name: RouteName.LoginPage,
      page: () => const LoginPage(),
      binding: LoginPageBinding(),
      transition: Transition.cupertino,
    ),
  ];
}