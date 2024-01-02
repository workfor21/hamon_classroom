import 'package:flutter/material.dart';

customAssetsImage(String image,{double? size}) {
  return SizedBox(
    width:size ?? 100,
    height:size ?? 100,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Image.asset(image,fit: BoxFit.cover,),
    ),
  );
}