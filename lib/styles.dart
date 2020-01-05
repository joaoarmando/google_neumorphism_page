import 'package:flutter/material.dart';

final Color backgroundColor = Color(0xffE1E6EC);
final Color iconColor = Color(0xff696F76);

final BoxShadow topShadow =  BoxShadow(
    color: Colors.white.withOpacity(.3),
    offset: Offset(-6,-6),
    blurRadius: 12.0,
);

final BoxShadow bottomShadow = BoxShadow(
  color: Color(0xffA3b1c6).withOpacity(.3),
  offset: Offset(6,6),
  blurRadius: 6.0,
);

final BoxDecoration decoration = BoxDecoration(
  color: backgroundColor,
  borderRadius: BorderRadius.circular(15),
  boxShadow: [
    topShadow,
    bottomShadow,
  ]
);