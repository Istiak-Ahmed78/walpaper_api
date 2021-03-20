import 'package:flutter/material.dart';
import 'package:new_to_edit/views/styles/colors.dart';
import 'package:new_to_edit/views/styles/styles.dart';
import 'icon_with_count.dart';
import 'search_screen.dart';

class HeaderPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 50,
      child: Row(
        children: [
          Expanded(
            child: SearchField(),
          ),
          Container(
            height: kRadius45,
            width: kRadius45,
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                color: kLightSecondryColor, shape: BoxShape.circle),
            child: Icon(
              Icons.shop,
              color: kSecondaryColor,
            ),
          ),
          IconWithCont(
            count: '1',
          )
        ],
      ),
    );
  }
}
