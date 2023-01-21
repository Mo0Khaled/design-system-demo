import 'package:flutter/material.dart';

@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.color,
    required this.fontSize,
    required this.fontWeight,
  });

  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  CustomColors copyWith({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
  }) {
    return CustomColors(
      fontSize: fontSize ?? this.fontSize,
      color: color ?? this.color,
      fontWeight: fontWeight ?? this.fontWeight,
    );
  }


  // Controls how the properties change on theme changes
  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      color: Color.lerp(color, other.color, t),
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }

  @override
  String toString() => '';


  // the light theme
  static CustomColors light = CustomColors(
    color: const Color(0xff28a745),
    fontSize: 30,
    fontWeight: FontWeight.w400,
  );
  static CustomColors dark = CustomColors(
    color: Colors.red,
    fontSize: 30,
    fontWeight: FontWeight.w400,
  );
}
