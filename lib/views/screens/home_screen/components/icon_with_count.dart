import 'package:flutter/material.dart';
import 'package:new_to_edit/views/styles/styles.dart';

class IconWithCont extends StatelessWidget {
  final String? count;
  const IconWithCont({Key? key, this.count}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: kRadius45,
          width: kRadius45,
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration:
              BoxDecoration(color: kLightSecondryColor, shape: BoxShape.circle),
          child: Icon(
            Icons.notifications_none,
            color: kSecondaryColor,
          ),
        ),
        Positioned(
          left: 37,
          // top: -2,
          child: Container(
            height: 15,
            width: 15,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: kRedColor, shape: BoxShape.circle),
            child: Text(
              count!,
              style: TextStyle(color: kWhiteColor, fontSize: 10),
            ),
          ),
        )
      ],
    );
  }
}
