import 'package:flutter/material.dart';

headerWidget(String title,{double? fontSize,FontWeight? fontWeight}) {
  return Center(
    child: Text(
      title,
      style: TextStyle(
          fontSize: fontSize ?? 25, fontWeight: fontWeight ?? FontWeight.bold),
    ),
  );
}