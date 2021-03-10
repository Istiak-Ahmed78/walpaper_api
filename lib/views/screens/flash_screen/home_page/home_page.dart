import 'package:flutter/material.dart';
import 'package:new_to_edit/models/walpaper_model.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) => Container(
            width: double.infinity,
            height: 400,
            child: Column(
              children: [
                Image.network(
                  WalpaperModel.walpaperList[index].walpaperUrl,
                  height: 300,
                  width: 300,
                ),
              ],
            ),
          ),
          itemCount: WalpaperModel.walpaperList.length,
          shrinkWrap: true,
        ),
      ),
    );
  }
}
