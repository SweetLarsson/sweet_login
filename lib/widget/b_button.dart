import 'package:flutter/material.dart';

import '../resources/values.dart';

class BButton extends StatelessWidget {
  final String label;
  final IconData? pIcon;
  final IconData? sIcon;
  final Color? bgColor;
  final Color? labelColor;
  final Color? pIconColor;
  final Color? sIconColor;
  final double? height = AppPadding.p50;
  final Function()? onTap;

  const BButton({
    super.key,
    required this.label,
    this.pIcon,
    this.sIcon,
    this.bgColor,
    this.labelColor,
    this.pIconColor,
    this.sIconColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppPadding.p10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: height,
          decoration: BoxDecoration(
            ///button background Colour
            color: bgColor,

            ///button radius
            borderRadius: const BorderRadius.all(
              Radius.circular(AppPadding.p10),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ///prefix Icon
              Icon(
                pIcon,
                color: pIconColor,
              ),

              ///button label
              Text(
                label,
                style: TextStyle(
                  color: labelColor,
                  fontWeight: FontWeight.normal,
                ),
              ),

              ///suffix Icon
              Icon(
                sIcon,
                color: sIconColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
