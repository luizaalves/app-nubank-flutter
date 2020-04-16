import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget shapeCircle(Color color){
  return AnimatedContainer( // da um delay para mudar de um container para o outro
    duration: Duration(milliseconds: 300),
    height: 7,
    width: 7,
    decoration: BoxDecoration(
      color: color,
      shape: BoxShape.circle
    ),
  );
}