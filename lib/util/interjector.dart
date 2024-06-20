import 'package:flutter/material.dart';

List<Widget> interjector(List<Widget> widgets,Widget interjector) {
  final length = widgets.length;
  for (var i = 0; i < length; i++) {
    widgets.insert(i*2, interjector);
  }
  return widgets;
}