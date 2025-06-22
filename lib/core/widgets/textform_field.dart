import 'package:flutter/material.dart';


class CustomTextFormField extends StatelessWidget
{
  const CustomTextFormField({
    super.key,
    this.validator,
    this.controller,
    this.keyboardType,
    this.prefixIcon,
    this.hintText,
    this.hintStyle,
    this.suffixIcon,
    this.obscureText,
    this.isEnabled,
    this.readOnly,
    this.fillColor,
    this.focusedColor,
    this.borderRadius,
    this.suffixStyle,
    this.onSubmitted,
  });

  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  final TextStyle? hintStyle;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final bool? isEnabled;
  final bool? readOnly;
  final Color? fillColor;
  final Color? focusedColor;
  final BorderRadius? borderRadius;
  final TextStyle? suffixStyle;
  final void Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context)
  {
    return TextFormField(
      enabled: isEnabled,
      keyboardType: keyboardType,
      readOnly: readOnly ?? false,
      obscureText: obscureText ?? false,
      controller: controller,
      validator: validator,
      onFieldSubmitted: onSubmitted,
      
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        suffixStyle: suffixStyle,
        fillColor: fillColor,
        focusColor: focusedColor,
        border: borderRadius != null ? OutlineInputBorder(borderRadius: borderRadius!,): null,
      ),
    );
  }
}
