
import 'dart:ui';

import 'package:flutter/material.dart';

extension WidgetExtension on Widget {
  Widget useMaterial3() {
    return Theme(
      data: ThemeData(useMaterial3: true),
      child: this,
    );
  }

  Widget useMaterial2() {
    return Theme(
      data: ThemeData(useMaterial3: false),
      child: this,
    );
  }

  Widget padding([EdgeInsets? padding]) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(8.0),
      child: this,
    );
  }

  Widget paddingAll(double padding) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: this,
    );
  }

  Widget paddingSymmetric({double vertical = 0, double horizontal = 0}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: this,
    );
  }

  Widget paddingOnly(
      {double left = 0, double top = 0, double right = 0, double bottom = 0}) {
    return Padding(
      padding:
          EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
      child: this,
    );
  }

  Widget sizedBox({double? width, double? height}) {
    return SizedBox(
      width: width,
      height: height,
    );
  }

  Widget expanded([int flex = 1]) {
    return Expanded(
      flex: flex,
      child: this,
    );
  }

  Widget flex([int flex = 1]) {
    return Flexible(
      flex: flex,
      child: this,
    );
  }

  Widget center() {
    return Center(
      child: this,
    );
  }

  Widget align([AlignmentGeometry alignment = Alignment.center]) {
    return Align(
      alignment: alignment,
      child: this,
    );
  }

  Widget popupMenu(Widget menu) {
    return Theme(
      data: ThemeData(disabledColor: Colors.transparent),
      child: PopupMenuButton(
        itemBuilder: (context) => [
          PopupMenuItem(
            enabled: false,
            child: Theme(
              data: ThemeData(disabledColor: Colors.grey),
              child: menu,
            ),
          )
        ],
        icon: this,
      ),
    );
  }
}

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
