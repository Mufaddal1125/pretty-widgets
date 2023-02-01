import 'dart:ui';

import 'package:flutter/material.dart';

extension TextWidgetExtension on Text {
  TextStyle get style => this.style ?? const TextStyle();

  Text color(Color color) {
    return copyWith(
      style: style.copyWith(color: color),
    );
  }

  Text size(double size) {
    return copyWith(
      style: style.copyWith(fontSize: size),
    );
  }

  Text weight(FontWeight weight) {
    return copyWith(
      style: style.copyWith(fontWeight: weight),
    );
  }

  Text italic() {
    return copyWith(
      style: style.copyWith(fontStyle: FontStyle.italic),
    );
  }

  Text bold() {
    return copyWith(
      style: style.copyWith(fontWeight: FontWeight.bold),
    );
  }

  Text underline() {
    return copyWith(
      style: style.copyWith(decoration: TextDecoration.underline),
    );
  }

  Text lineThrough() {
    return copyWith(
      style: style.copyWith(decoration: TextDecoration.lineThrough),
    );
  }

  Text overline() {
    return copyWith(
      style: style.copyWith(decoration: TextDecoration.overline),
    );
  }

  Text letterSpacing(double spacing) {
    return copyWith(
      style: style.copyWith(letterSpacing: spacing),
    );
  }

  Text wordSpacing(double spacing) {
    return copyWith(
      style: style.copyWith(wordSpacing: spacing),
    );
  }

  Text height(double height) {
    return copyWith(
      style: style.copyWith(height: height),
    );
  }

  Text background(Color color) {
    return copyWith(
      style: style.copyWith(background: Paint()..color = color),
    );
  }

  Text foreground(Color color) {
    return copyWith(
      style: style.copyWith(foreground: Paint()..color = color),
    );
  }

  Text shadow(Color color, {Offset offset = Offset.zero, double blur = 0}) {
    return copyWith(
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
    return copyWith(
      style: style.copyWith(shadows: shadows),
    );
  }

  Text font(String font) {
    return copyWith(
      style: style.copyWith(fontFamily: font),
    );
  }

  Text withStyle({
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
    return copyWith(
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

  Text copyWith({
    Key? key,
    String? data,
    Locale? locale,
    int? maxLines,
    TextOverflow? overflow,
    bool? softWrap,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    double? textScaleFactor,
    TextWidthBasis? textWidthBasis,
    Color? selectionColor,
    String? semanticsLabel,
    TextHeightBehavior? textHeightBehavior,
    TextStyle? style,
  }) {
    return Text(
      key: key ?? this.key,
      data ?? this.data ?? '',
      locale: locale ?? this.locale,
      maxLines: maxLines ?? this.maxLines,
      overflow: overflow ?? this.overflow,
      softWrap: softWrap ?? this.softWrap,
      strutStyle: strutStyle ?? this.strutStyle,
      textAlign: textAlign ?? this.textAlign,
      textDirection: textDirection ?? this.textDirection,
      textScaleFactor: textScaleFactor ?? this.textScaleFactor,
      textWidthBasis: textWidthBasis ?? this.textWidthBasis,
      selectionColor: selectionColor ?? this.selectionColor,
      semanticsLabel: semanticsLabel ?? this.semanticsLabel,
      textHeightBehavior: textHeightBehavior ?? this.textHeightBehavior,
      style: style ?? this.style,
    );
  }
}
