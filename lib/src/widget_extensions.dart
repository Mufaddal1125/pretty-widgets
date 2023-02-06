import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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

  Widget paddingOnly({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) {
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
      child: this,
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

  Widget popupMenu(
    Widget menu, {
    void Function(dynamic)? onSelected,
    void Function()? onCancelled,
    /// If true, the widget will be the child of popup menu button.
    bool asChild = false,
    bool enabled = true,
  }) {
    return PopupMenuButton(
      itemBuilder: (context) => [
        PopupMenuItem(
          enabled: enabled,
          child: menu,
        )
      ],
      icon: !asChild ? this : null,
      onCanceled: onCancelled,
      onSelected: onSelected,
      child: asChild ? this : null,
    );
  }

  Widget margin([EdgeInsets? margin]) {
    return Container(
      margin: margin ?? const EdgeInsets.all(8.0),
      child: this,
    );
  }

  Widget marginAll(double margin) {
    return Container(
      margin: EdgeInsets.all(margin),
      child: this,
    );
  }

  Widget marginSymmetric({double vertical = 0, double horizontal = 0}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: this,
    );
  }

  Widget marginOnly({
    double left = 0,
    double top = 0,
    double right = 0,
    double bottom = 0,
  }) {
    return Container(
      margin:
          EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
      child: this,
    );
  }

  Widget onTap(VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: this,
    );
  }

  Widget onLongPress(VoidCallback onLongPress) {
    return InkWell(
      onLongPress: onLongPress,
      child: this,
    );
  }

  Widget onDoubleTap(VoidCallback onDoubleTap) {
    return InkWell(
      onDoubleTap: onDoubleTap,
      child: this,
    );
  }

  Widget onHover(Function(PointerHoverEvent) onHover) {
    return MouseRegion(
      onHover: onHover,
      child: this,
    );
  }

  Widget onEnter(Function(PointerEnterEvent) onEnter) {
    return MouseRegion(
      onEnter: onEnter,
      child: this,
    );
  }

  Widget onExit(Function(PointerExitEvent) onExit) {
    return MouseRegion(
      onExit: onExit,
      child: this,
    );
  }

  Widget alignTopLeft() {
    return Align(
      alignment: Alignment.topLeft,
      child: this,
    );
  }

  Widget alignTopCenter() {
    return Align(
      alignment: Alignment.topCenter,
      child: this,
    );
  }

  Widget alignTopRight() {
    return Align(
      alignment: Alignment.topRight,
      child: this,
    );
  }

  Widget alignCenterLeft() {
    return Align(
      alignment: Alignment.centerLeft,
      child: this,
    );
  }

  Widget alignCenter() {
    return Align(
      alignment: Alignment.center,
      child: this,
    );
  }

  Widget alignCenterRight() {
    return Align(
      alignment: Alignment.centerRight,
      child: this,
    );
  }

  Widget alignBottomLeft() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: this,
    );
  }

  Widget alignBottomCenter() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: this,
    );
  }

  Widget alignBottomRight() {
    return Align(
      alignment: Alignment.bottomRight,
      child: this,
    );
  }
}
