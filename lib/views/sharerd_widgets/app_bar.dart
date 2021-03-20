import 'package:flutter/material.dart';
import 'package:new_to_edit/views/styles/styles.dart';

AppBar appBar(BuildContext context, String appBarText) => AppBar(
      elevation: 0.0,
      centerTitle: true,
      backgroundColor: kWhiteColor,
      title: Text(
        appBarText,
        style: TextStyle(color: kSecondaryColor),
      ),
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back_ios,
          color: kBlack,
        ),
      ),
    );
