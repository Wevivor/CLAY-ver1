import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/helpers.dart';
import 'package:flutter/material.dart';

enum PUSH_KIND { NONE, BUY, SALE, EVENT, EMERGENCY, NOTICE, AWAIT }

class PushTile extends StatelessWidget {
  final String? title;
  final String? content;
  final onTap;
  final PUSH_KIND alert;

  PushTile({
    this.title,
    this.content,
    this.onTap,
    this.alert = PUSH_KIND.NONE,
  });

  List<String> flags = ['', '매수', '매도', '이벤트', '긴급', '공지', '대기'];

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    final flagIndex = alert.index;

    if (alert.index > 0)
      return Container(
        color: Color(0xFFF6F6F6),
        child: ListTile(
          contentPadding: EdgeInsets.all(0),
          leading: Padding(
            padding: const EdgeInsets.only(
                left: 12.0, right: 12.0, top: 10.0, bottom: 10.0),
            child: Container(
              height: 40,
              width: 40,
              decoration: DecoHelper.cicleDeco.copyWith(
                border: Border.all(width: 1, color: Color(0xffD7D7D7)),
              ),
              child: Center(
                child: Text(
                  flags[flagIndex],
                  style: baseStyle.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3D3D3D),
                  ),
                ),
              ),
            ),
          ),
          title: Text(
            title ?? '',
            style: baseStyle.copyWith(
              fontSize: 13,
              fontWeight: FontWeight.w500,
              color: Color(0xff191919),
            ),
          ),
          subtitle: vwContent(context, flagIndex),
          trailing: IconButton(
            onPressed: () {
              if (onTap != null) onTap();
            },
            icon: Icon(Icons.chevron_right),
          ),
        ),
      );
    else {
      return Container(
        child: Row(
          children: [
            Text(
              content ?? '',
              style: baseStyle.copyWith(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Color(0xff191919),
              ),
            ),
          ],
        ),
      );
    }
  }

  Widget vwContent(BuildContext context, int flagIndex) {
    if (flagIndex == 1 || flagIndex == 2) {
      return Row(
        children: [
          if (flagIndex == 1)
            Text(
              '매수시점 : ',
              style: baseStyle.copyWith(
                fontSize: 9,
                fontWeight: FontWeight.bold,
                color: Color(0xffE9894E),
              ),
            ),
          if (flagIndex == 2)
            Text(
              '매도시점 : ',
              style: baseStyle.copyWith(
                fontSize: 9,
                fontWeight: FontWeight.bold,
                color: Color(0xff2A3E7F),
              ),
            ),
          Text(
            content ?? '',
            style: baseStyle.copyWith(
              fontSize: 9,
              fontWeight: FontWeight.normal,
              color: Color(0xff838383),
            ),
          ),
        ],
      );
    } else
      return Text(
        content ?? '',
        style: baseStyle.copyWith(
          fontSize: 11,
          fontWeight: FontWeight.normal,
          color: Color(0xff191919),
        ),
      );
  }
}
