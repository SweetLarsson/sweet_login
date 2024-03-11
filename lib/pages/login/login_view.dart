import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';
import '../../Resources/images.dart';
import '../../resources/icons.dart';
import '../../resources/values.dart';
import '../../widget/b_box.dart';
import '../../widget/b_button.dart';
import '../../widget/gradient_background.dart';
import 'package:flutter/material.dart';
import '../../widget/b_txt_field.dart';
import '../../resources/strings.dart';
import 'login_controller.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GradientBackground(),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.p60,
              vertical: AppPadding.p150,
            ),
            child: Card(
              shape: const RoundedRectangleBorder(
                side: BorderSide(
                  strokeAlign: 1,
                  width: 2,
                  color: Colors.white24,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(Size.s40),
                ),
              ),
              elevation: 4,
              color: Colors.blueGrey.withOpacity(0.1),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 10),

                    ///Username textField
                    const BeautifulTextField(
                        obscure: false,
                        label: name,
                        labelColor: Colors.white70,
                        pfxIcon: pfxIcon,
                        pfxIconColor: Colors.white54,
                        //sfxIcon: clear,
                        sfxColor: Colors.black54,
                        //sfxOnTap: ,
                      ),


                    ///Password textField
                    Obx(
                      () => BeautifulTextField(
                        obscure: controller.isObscured.value,
                        label: password,
                        maxLine: 1,
                        labelColor: Colors.white70,
                        pfxIcon: Icons.lock_outlined,
                        pfxIconColor: Colors.white54,
                        sfxColor: Colors.white54,
                        sfxIcon:
                            controller.isObscured.value ? invisible : visible,
                        sfxOnTap: () {
                          controller.isObscured.value =
                              !controller.isObscured.value;
                        },
                      ),
                    ),

                    ///Forgot password
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          forgotPass,
                          style: TextStyle(
                            color: Colors.white54,
                          ),
                        ),
                      ],
                    ),

                    ///Login button
                    const BButton(
                      label: loginButton,
                      labelColor: Colors.white70,
                      bgColor: Colors.black54,
                      onTap: null,
                    ),

                    ///I want to sign up
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          yetToSignUp,
                          style: TextStyle(
                            color: Colors.white54,
                          ),
                        ),
                        SizedBox(
                          width: AppPadding.p15,
                        ),
                        Text(
                          signUp,
                          style: TextStyle(
                            color: Colors.amber,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    ///Alternative Sign in method
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SignBox(
                          imgPath: googleLogo,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SignBox(
                          imgPath: appleLogo,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
