import 'package:flutter/material.dart';
import 'package:new_to_edit/views/styles/colors.dart';
import 'views/styles/padding.dart';

OutlineInputBorder otpStyle() => OutlineInputBorder(
    borderSide: BorderSide(color: kBlack, width: 2),
    borderRadius: BorderRadius.all(Radius.circular(10)));
const textFieldRadius = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(kRadius20)),
    borderSide: BorderSide.none);
