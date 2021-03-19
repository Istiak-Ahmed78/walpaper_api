import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_to_edit/models/models.dart';
import 'package:new_to_edit/views/screens/splash_screen/components/page_view.dart';
import 'package:new_to_edit/views/sharerd_widgets/shared_widgets.dart';
import 'package:new_to_edit/views/styles/colors.dart';

class SplashScreenBody extends StatefulWidget {
  @override
  _SplashScreenBodyState createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  int currentInde = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Spacer(),
        Text(
          'TOKOTO',
          style: TextStyle(color: kPrimaryColor, fontSize: 36),
        ),
        Container(
          // color: Colors.teal,
          constraints: BoxConstraints(
              minHeight: 300,
              maxHeight: MediaQuery.of(context).size.height * 0.5,
              minWidth: double.infinity),
          child: PageView.builder(
            onPageChanged: (int index) {
              setState(() {
                currentInde = index;
              });
            },
            itemBuilder: (context, index) => PageViewContent(
              text: SpleshScreenViewModel.pageViewList[index].subText,
              imageAdress:
                  SpleshScreenViewModel.pageViewList[index].imageAdress,
            ),
            itemCount: SpleshScreenViewModel.pageViewList.length,
          ),
        ),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              SpleshScreenViewModel.pageViewList.length,
              (index) => AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    height: 6,
                    width: currentInde == index ? 20 : 10,
                    decoration: BoxDecoration(
                        color: currentInde == index
                            ? kPrimaryColor
                            : Color(0xFFD8D8D8),
                        borderRadius: BorderRadius.all(Radius.circular(3))),
                  )),
        ),
        Spacer(
          flex: 2,
        ),
        Spacer(),
        DefaultButton(
          buttonText: 'Continue',
          onPressed: () {},
        )
      ],
    );
  }

  AnimatedContainer pageViewCon(int currentIndex) {
    return AnimatedContainer(
      duration: Duration(seconds: 200),
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 6,
      width: currentIndex == currentInde ? 20 : 10,
      decoration: BoxDecoration(
          color:
              currentIndex == currentInde ? kPrimaryColor : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.all(Radius.circular(3))),
    );
  }
}
