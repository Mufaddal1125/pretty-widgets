
import 'dart:ui';

import 'package:flutter/material.dart';

extension TextWidgetExtension on Text {
  TextStyle get style => this.style ?? const TextStyle();

  Text color(Color color) {
    return Text(
      data!,
      style: style.copyWith(color: color),
    );
  }

  Text size(double size) {
    return Text(
      data!,
      style: style.copyWith(fontSize: size),
    );
  }

  Text weight(FontWeight weight) {
    return Text(
      data!,
      style: style.copyWith(fontWeight: weight),
    );
  }

  Text italic() {
    return Text(
      data!,
      style: style.copyWith(fontStyle: FontStyle.italic),
    );
  }

  Text bold() {
    return Text(
      data!,
      style: style.copyWith(fontWeight: FontWeight.bold),
    );
  }

  Text underline() {
    return Text(
      data!,
      style: style.copyWith(decoration: TextDecoration.underline),
    );
  }

  Text lineThrough() {
    return Text(
      data!,
      style: style.copyWith(decoration: TextDecoration.lineThrough),
    );
  }

  Text overline() {
    return Text(
      data!,
      style: style.copyWith(decoration: TextDecoration.overline),
    );
  }

  Text letterSpacing(double spacing) {
    return Text(
      data!,
      style: style.copyWith(letterSpacing: spacing),
    );
  }

  Text wordSpacing(double spacing) {
    return Text(
      data!,
      style: style.copyWith(wordSpacing: spacing),
    );
  }

  Text height(double height) {
    return Text(
      data!,
      style: style.copyWith(height: height),
    );
  }

  Text background(Color color) {
    return Text(
      data!,
      style: style.copyWith(background: Paint()..color = color),
    );
  }

  Text foreground(Color color) {
    return Text(
      data!,
      style: style.copyWith(foreground: Paint()..color = color),
    );
  }

  Text shadow(Color color, {Offset offset = Offset.zero, double blur = 0}) {
    return Text(
      data!,
      style: style.copyWith(
        shadows: [
          Shadow(
            color: color,
            offset: offset,
            blurRadius: blur,
          )
        ],
      ),
    );
  }

  Text shadows(List<Shadow> shadows) {
    return Text(
      data!,
      style: style.copyWith(shadows: shadows),
    );
  }

  Text font(String font) {
    return Text(
      data!,
      style: style.copyWith(fontFamily: font),
    );
  }

  Text align(TextAlign align) {
    return Text(
      data!,
      textAlign: align,
    );
  }

  Text maxLines(int maxLines) {
    return Text(
      data!,
      maxLines: maxLines,
    );
  }

  Text overflow(TextOverflow overflow) {
    return Text(
      data!,
      overflow: overflow,
    );
  }

  Text softWrap(bool softWrap) {
    return Text(
      data!,
      softWrap: softWrap,
    );
  }

  Text textScaleFactor(double textScaleFactor) {
    return Text(
      data!,
      textScaleFactor: textScaleFactor,
    );
  }

  Text textWidthBasis(TextWidthBasis textWidthBasis) {
    return Text(
      data!,
      textWidthBasis: textWidthBasis,
    );
  }

  Text textDirection(TextDirection textDirection) {
    return Text(
      data!,
      textDirection: textDirection,
    );
  }

  Text locale(Locale locale) {
    return Text(
      data!,
      locale: locale,
    );
  }

  Text strutStyle(StrutStyle strutStyle) {
    return Text(
      data!,
      strutStyle: strutStyle,
    );
  }

  Text textHeightBehavior(TextHeightBehavior textHeightBehavior) {
    return Text(
      data!,
      textHeightBehavior: textHeightBehavior,
    );
  }

  Text copyStyle({
    bool? inherit,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    TextLeadingDistribution? leadingDistribution,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<Shadow>? shadows,
    List<FontFeature>? fontFeatures,
    List<FontVariation>? fontVariations,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    String? package,
    TextOverflow? overflow,
  }) {
    return Text(
      data!,
      style: style.copyWith(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        letterSpacing: letterSpacing,
        wordSpacing: wordSpacing,
        height: height,
        background: background,
        foreground: foreground,
        shadows: shadows,
        fontFamily: fontFamily,
        fontFamilyFallback: fontFamilyFallback,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        debugLabel: debugLabel,
        textBaseline: textBaseline,
        locale: locale,
        backgroundColor: backgroundColor,
        fontFeatures: fontFeatures,
        fontVariations: fontVariations,
        leadingDistribution: leadingDistribution,
        package: package,
        overflow: overflow,
      ),
    );
  }
}
