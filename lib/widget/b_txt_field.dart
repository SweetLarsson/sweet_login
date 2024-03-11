import 'package:flutter/material.dart';

import '../resources/values.dart';

class BeautifulTextField extends StatelessWidget {
  final String label;
  final Color? labelColor;
  final Color? pfxIconColor;
  final Color? sfxColor;
  final IconData? pfxIcon;
  final IconData? sfxIcon;
  final bool? obscure;
  final int? maxLine;
  final void Function()? sfxOnTap;

  const BeautifulTextField({
    super.key,
    required this.label,
    this.maxLine,
    this.labelColor,
    this.pfxIconColor,
    this.sfxColor,
    this.pfxIcon,
    this.sfxIcon,
    this.obscure,
    this.sfxOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppPadding.p5),
      child: TextField(
        maxLines: maxLine,
        obscureText: obscure!,
        cursorColor: Colors.white54,
        style: const TextStyle(color: Colors.white70),
        decoration: InputDecoration(
          prefixIcon: Icon(pfxIcon),
          prefixIconColor: pfxIconColor,
          isDense: true,
          labelText: label,
          labelStyle: TextStyle(color: labelColor),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(
              color: Colors.white10,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(
              color: Colors.white54,
            ),
          ),
          filled: true,
          fillColor: Colors.white12,
          /*suffix: IconButton(
            icon: Icon(
              sfxIcon,
              size: 15,
              color: sfxColor,
            ),
            onPressed: sfxOnTap,
          ),*/
          suffixIcon: IconButton(
            icon: Icon(
              sfxIcon,
              color: sfxColor,
            ),
            onPressed: sfxOnTap,
          ),
        ),
      ),
    );
  }
}
