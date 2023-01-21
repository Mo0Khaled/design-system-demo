import 'package:design_system_demo/core/theme/colors.dart';
import 'package:design_system_demo/main.dart';
import 'package:flutter/material.dart';

@immutable
class BodyLargeStyle extends ThemeExtension<BodyLargeStyle> {
  final Color? color;
  final double? fontSize;
  final double? lineHeight;
  final FontWeight? fontWeight;
  final String? fontFamily;

  const BodyLargeStyle({
    required this.color,
    required this.fontSize,
    required this.lineHeight,
    required this.fontWeight,
    required this.fontFamily,
  });

  @override
  ThemeExtension<BodyLargeStyle> copyWith() {
    // TODO: implement copyWith
    throw UnimplementedError();
  }

  @override
  ThemeExtension<BodyLargeStyle> lerp(
      ThemeExtension<BodyLargeStyle>? other, double t) {
    if (other is! BodyLargeStyle) {
      return this;
    }
    return BodyLargeStyle(
      color: color,
      fontSize: fontSize,
      lineHeight: lineHeight,
      fontWeight: fontWeight,
      fontFamily: fontFamily,
    );
  }

  static BodyLargeStyle light = BodyLargeStyle(
    color: Colors.amber,
    fontSize: 12,
    lineHeight: 1,
    fontWeight: FontWeight.w400,
    fontFamily: "any",
  );
}
