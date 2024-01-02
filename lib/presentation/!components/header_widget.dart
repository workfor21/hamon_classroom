import 'package:flutter/material.dart';

headerWidget(String title,{double? fontSize}) {
  return Center(
    child: Text(
      title,
      style: TextStyle(
          fontSize: fontSize ?? 25, fontWeight: FontWeight.bold),
    ),
  );
}