import 'package:flutter/material.dart';

class SCBottomBarDetails {
  Color? backgroundColor;
  double? elevation;
  List<Color>? circleColors;
  IconThemeData? activeIconTheme;
  IconThemeData? iconTheme;
  TextStyle? activeTitleStyle;
  TextStyle? titleStyle;
  List<SCBottomBarItem?> items;
  List<SCItem> circleItems;
  SCActionButtonDetails? actionButtonDetails;
  double? bnbHeight;

  SCBottomBarDetails({
    required this.items,
    required this.circleItems,
    this.bnbHeight,
    this.actionButtonDetails,
    this.activeIconTheme,
    this.iconTheme,
    this.activeTitleStyle,
    this.titleStyle,
    this.circleColors,
    this.backgroundColor,
    this.elevation,
  });
}

class SCActionButtonDetails {
  Color color;
  Widget icon;
  Widget? closedIcon;
  double elevation;

  SCActionButtonDetails({
    required this.color,
    required this.icon,
    this.closedIcon,
    required this.elevation,
  });
}

class SCItem {
  Widget icon;
  void Function() onPressed;

  SCItem({
    required this.icon,
    required this.onPressed,
  });
}

class SCBottomBarItem {
  Widget? child;
  IconData? activeIcon;
  IconData? icon;
  String? title;
  Function onPressed;

  SCBottomBarItem({
    this.child,
    this.activeIcon,
    this.icon,
    this.title,
    required this.onPressed,
  }) : assert(child != null || icon != null);
}
