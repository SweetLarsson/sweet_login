import 'package:flutter/material.dart';
import '../Resources/images.dart';

class GradientBackground extends StatelessWidget {
  final Widget? widget;

  const GradientBackground({
    super.key,
    this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
        colors: [
          Colors.black,
          Colors.black12,
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.center,
      ).createShader(bounds),
      blendMode: BlendMode.darken,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(bckImageOne),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black45,
              BlendMode.darken,
            ),
          ),
        ),
      ),
    );
  }
}
