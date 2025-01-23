import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prochain/core/style/style.dart';

class FormTextUnderlineWidget extends StatelessWidget {
  const FormTextUnderlineWidget({
    super.key,
    this.textController,
    this.focusNode,
    this.onFieldSubmitted,
    this.validator,
    this.textInputAction,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.inputFormatters,
    this.obscureText = false,
    this.maxLength,
    this.maxLines = 1,
    this.filled,
    this.fillColor,
    this.labelText,
    this.hintText,
    this.helperText,
    this.prefixIcon,
    this.suffixIcon,
    this.readOnly = false,
    this.onTap,
  });

  final dynamic textController;
  final dynamic focusNode;
  final dynamic onFieldSubmitted;
  final dynamic validator;
  final dynamic textInputAction;
  final dynamic keyboardType;
  final dynamic inputFormatters;
  final dynamic textCapitalization;
  final dynamic obscureText;
  final dynamic maxLength;
  final dynamic maxLines;
  final dynamic filled;
  final dynamic fillColor;
  final dynamic labelText;
  final dynamic hintText;
  final dynamic helperText;
  final dynamic prefixIcon;
  final dynamic suffixIcon;
  final dynamic readOnly;
  final dynamic onTap;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      readOnly: readOnly,
      controller: textController,
      focusNode: focusNode,
      onFieldSubmitted: onFieldSubmitted,
      validator: validator,
      autofocus: false,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      textCapitalization: textCapitalization,
      inputFormatters: inputFormatters,
      obscureText: obscureText,
      cursorColor: colorSuccess,
      style: Get.textTheme.bodyMedium!
          .merge(TextStyle(color: colorGreyDark, fontSize: 12)),
      maxLength: maxLength,
      maxLines: maxLines,
      decoration: InputDecoration(
        filled: filled,
        fillColor: fillColor,
        contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: marginXs),
        labelText: labelText,
        labelStyle:
            Get.textTheme.labelLarge!.merge(TextStyle(color: colorBlack)),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: hintText,
        hintStyle: Get.textTheme.bodyMedium!
            .merge(TextStyle(color: colorGreyDark, fontSize: 12)),
        helperText: helperText,
        helperStyle: Get.textTheme.bodySmall,
        helperMaxLines: 2,
        errorStyle: Get.textTheme.bodySmall!
            .merge(TextStyle(color: colorError, fontSize: 12)),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: colorGrey, width: 0.5),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: colorGrey, width: 0.5),
        ),
      ),
    );
  }
}
