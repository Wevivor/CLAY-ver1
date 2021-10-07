import 'package:clay/c_config/config.dart';
import 'package:flutter/material.dart';

class SearchResultCard extends StatelessWidget {
  final double height;
  final double width;
  String? imgUrl;
  String? name;
  String? benefit;
  static String stand_stock_image = '';

  SearchResultCard(
      {this.height = 60,
      this.width = 80,
      this.imgUrl,
      this.name,
      this.benefit});
  @override
  Widget build(BuildContext context) {

    final stockTextStyle = baseStyle.copyWith(
        fontSize:14,
        letterSpacing: 0.1,
        color: Color(0xff495057),
        fontWeight: FontWeight.w500);

    return Container(

      child: Container(
        width: width,
        height: height + 160,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.white,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.network(
                  imgUrl ?? '$stand_stock_image',
                  width: width,
                  height: height,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              'Testing',
              style: stockTextStyle,
            ),
            Text(
              'Benefit',
              style: stockTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
