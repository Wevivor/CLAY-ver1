import 'package:flutter/material.dart';
import 'package:clay/c_config/config.dart';

class SnsWideWidget extends StatelessWidget {
  String assetName;
  String title;
  Function onTap;
  SnsWideWidget(
      {required this.assetName, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        alignment: FractionalOffset.center,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 1),
                  color: GlobalStyle.primary,
                  borderRadius: BorderRadius.all(Radius.circular(11))),
              child: Image.asset(
                assetName,
              ),
            ),
            Center(
              child: Text(
                title,
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
