import 'package:flutter/material.dart';

import '../resources/values.dart';

class SignBox extends StatelessWidget {
  final String imgPath;

  const SignBox({
    super.key,
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppPadding.p50,
      height: AppPadding.p50,
      decoration: BoxDecoration(
        color: Colors.white12,
        border: Border.all(
          color: Colors.white24,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppPadding.p15,
          ),
        ),
      ),
      alignment: Alignment.center,
      child: Image.asset(
        imgPath,
      ),
    );
  }
}
