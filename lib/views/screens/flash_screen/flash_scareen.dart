import 'package:flutter/material.dart';
import 'package:new_to_edit/models/walpaper_model.dart';
import 'package:new_to_edit/utilis/handle_funtions.dart';
import 'package:new_to_edit/utilis/network_call.dart';
import 'package:new_to_edit/utilis/rest_api.dart';

import 'home_page/home_page.dart';

class FleshScreen extends StatefulWidget {
  @override
  _FleshScreenState createState() => _FleshScreenState();
}

class _FleshScreenState extends State<FleshScreen> {
  @override
  void initState() {
    init();
    super.initState();
  }

  void init() async {
    String walpaperKey = '20615502-66c73e7d971c12c749399eec2';
    String walpaperUrl = 'https://pixabay.com/api/?key=$walpaperKey';
    await convertedData(resposeBody(await bringData(walpaperUrl, walpaperKey)))
        .then((value) => value['hits'].forEach((singleWalapD) {
              WalpaperModel.walpaperList.add(WalpaperModel(
                  walpaperId: singleWalapD['id'],
                  walpaperUrl: singleWalapD['previewURL'],
                  walpaperTitle: singleWalapD['tags']));
            }));
    print(WalpaperModel.walpaperList.length);
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => HomePage()));
  }

//hits[0].previewURL,hits[0].tags
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Welcome'),
      ),
      body: Center(
        child: Text('Loading data.Please wait'),
      ),
    );
  }
}
