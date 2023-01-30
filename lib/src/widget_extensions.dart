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
}
