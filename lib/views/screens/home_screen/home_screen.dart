import 'package:flutter/material.dart';
import 'package:new_to_edit/services/provider_services.dart';
import 'package:new_to_edit/views/styles/styles.dart';
import 'package:provider/provider.dart';
import 'components/header_part.dart';
import 'package:new_to_edit/helperwidgets/gap.dart';

class MyHomePage extends StatelessWidget {
  final String data2 = 'This is data 2';
  @override
  Widget build(BuildContext context) {
    print('Build method exicuted');
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<Data>(context, listen: false).doAction();
          print('Just tapped.');
        },
        child: Icon(Icons.run_circle_outlined),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDPadding),
          child: Column(
            children: [
              SizedBox(
                height: screenHeight(context) * 0.07,
              ),
              HeaderPart(),
              Consumer<Data>(
                builder: (context, data, widget) => Text(data.pin.toString()),
              ),
              Text(context.watch<Data>().message),
              SizedBox(
                height: 200,
              ),
              Text(context.watch<SetMyname>().data),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Provider.of<SetMyname>(context, listen: false)
                          .myRealName();
                    },
                    child: Text('Change Auther name'),
                  ).gap(right: 10.0, left: 10.0),
                ],
              )
              // Consumer<Data>(
              //   builder: (context, data, widget) => Text(data.pin.toString()),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
