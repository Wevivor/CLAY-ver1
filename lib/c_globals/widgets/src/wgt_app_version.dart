import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/src/helper_app.dart';
import 'package:flutter/material.dart';

//버젼을 출력시키는 위젯.
class AppVersionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Container(
      child: FutureBuilder(
          future: AppHelper.getPackageInfo(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData == false) {
              return CircularProgressIndicator();
            }
            //error가 발생하게 될 경우 반환하게 되는 부분
            else if (snapshot.hasError) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Error: ${snapshot.error}',
                  style: AppTheme.getTextStyle(
                    themeData.textTheme.caption,
                  ),
                ),
              );
            } else {
              return Text('Ver: ' + snapshot.data.version,
                  style: AppTheme.getTextStyle(themeData.textTheme.caption,
                      fontWeight: 700, letterSpacing: 0));
            }
          }),
    );
  }
}
