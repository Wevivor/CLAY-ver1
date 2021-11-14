import 'package:clay/c_config/config.dart';
import 'package:clay/c_globals/helper/src/helper_appbar.dart';
import 'package:clay/h_account/controllers/remind_controller.dart';
import 'package:clay/h_content/part_bs/helper_content_init_dto.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';

// ignore: must_be_immutable
class DateTimePickerWidget extends StatefulWidget {
  final current;
  DateTimePickerWidget({this.current});
  @override
  _DateTimePickerWidgetState createState() => _DateTimePickerWidgetState();
}

class _DateTimePickerWidgetState extends State<DateTimePickerWidget>
    with TickerProviderStateMixin, AppbarHelper, ContentInitDtoHelper {
  @override
  void initState() {
    super.initState();
    if (widget.current != null)
      setState(() => _currentDate2 = widget.current);
    else
      setState(() => _currentDate2 = DateTime.now());

    _currentDate = DateTime.now();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  // DateTime _currentDate = DateTime.now();
  late DateTime _currentDate;
  DateTime _currentDate2 =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
  String _currentMonth = DateFormat.yMMM().format(DateTime.now());
  DateTime _targetDateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    ///프로파일 이미지를 가져옴.
    debugPrint('=====> ${Get.deviceLocale?.languageCode}');

    /// Example Calendar Carousel without header and custom prev & next button
    final _calendarCarouselNoHeader = CalendarCarousel<Event>(
      locale: Get.locale?.languageCode ?? 'en',
      onDayPressed: (date, events) {
        this.setState(() => _currentDate2 = date);
        RemindController.to.date = date;
      },
      daysHaveCircularBorder: true,
      showOnlyCurrentMonthDate: false,

      // thisMonthDayBorderColor: Colors.grey,
      thisMonthDayBorderColor: Colors.transparent,

      // markedDatesMap: _markedDateMap,
      markedDatesMap: null,
      height: MySize.safeWidth - 30 * 2 - 30,
      selectedDateTime: _currentDate2,
      targetDateTime: _targetDateTime,
      customGridViewPhysics: NeverScrollableScrollPhysics(),
      showHeader: false,
      todayTextStyle: TextStyle(
        color: Colors.blue,
      ),
      todayButtonColor: Colors.transparent,

      minSelectedDate: _currentDate.subtract(Duration(days: 360)),
      maxSelectedDate: _currentDate.add(Duration(days: 360)),
      inactiveDaysTextStyle: TextStyle(
        color: Colors.transparent,
        fontSize: 16,
      ),
      onCalendarChanged: (DateTime date) {
        this.setState(() {
          _targetDateTime = date;
          _currentMonth = Jiffy(_targetDateTime).format('yMMM');
        });
      },
      onDayLongPressed: (DateTime date) {
        print('long pressed date $date');
      },
      firstDayOfWeek: 0,
      weekdayTextStyle: TextStyle(
        fontSize: 18,
        color: Color(0xff333333),
        fontWeight: FontWeight.w500,
      ),
      weekFormat: false,
      // todayBorderColor: Color(0xff017bfe),
      todayBorderColor: Color(0xff017bfe),
      //선택 한 날짜 칼러
      selectedDayButtonColor: Color(0xff017bfe),

      // 이달의 전후의 날짜들 보여줌
      //선택한 날짜 칼라.
      selectedDayTextStyle: TextStyle(
        // color: Colors.yellow,
        fontSize: 18,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
      daysTextStyle: TextStyle(
        fontSize: 18,
        color: Color(0xff666666),
      ),
      weekendTextStyle: TextStyle(
        color: Color(0xff666666),
        fontSize: 18,
      ),
      prevDaysTextStyle: TextStyle(
        fontSize: 16,
        color: Colors.transparent,
      ),
      nextDaysTextStyle: TextStyle(
        fontSize: 16,
        color: Colors.transparent,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            left: 30.0 + 10.0,
            right: 30.0,
          ),
          child: new Row(
            children: <Widget>[
              Expanded(
                  child: InkWell(
                onTap: () {
                  setState(() {
                    _targetDateTime =
                        DateTime(_currentDate.year, _currentDate.month);
                    _currentMonth = Jiffy(_targetDateTime).format('yMMM');
                  });
                },
                child: Text(
                  _currentMonth,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              )),
              IconButton(
                icon: Icon(Icons.chevron_left, color: Colors.black),
                onPressed: () {
                  setState(() {
                    _targetDateTime = DateTime(
                        _targetDateTime.year, _targetDateTime.month - 1);
                    // _currentMonth = DateFormat.yMMM().format(_targetDateTime);
                    _currentMonth = Jiffy(_targetDateTime).format('yMMM');
                  });
                },
              ),
              IconButton(
                icon: Icon(Icons.chevron_right, color: Colors.black),
                onPressed: () {
                  setState(() {
                    _targetDateTime = DateTime(
                        _targetDateTime.year, _targetDateTime.month + 1);
                    _currentMonth = Jiffy(_targetDateTime).format('yMMM');
                  });
                },
              )
            ],
          ),
        ),
        heightSpace(12.0),
        Container(
          // color: Colors.red,
          height: MySize.safeWidth - 30 * 2 - 30,
          margin: EdgeInsets.symmetric(horizontal: 30.0),
          child: _calendarCarouselNoHeader,
        ),
        //
        // Divider(
        //   thickness: 1,
        //   color: Color(0xffe6e4ea),
        //   // color: Colors.red,
        // ),
        // vwTitle('시간설정'),
        // heightSpace(14.0),
        // Container(
        //     height: 200,
        //     child: CupertinoDatePicker(
        //       mode: CupertinoDatePickerMode.time,
        //       initialDateTime: new DateTime(_currentDate.year,
        //           _currentDate.month, _currentDate.day, 12, 12),
        //       onDateTimeChanged: (DateTime newDateTime) {
        //         _currentDate = newDateTime;
        //       },
        //       // onTimerDurationChanged: (Duration value) {},
        //       // mode: CupertinoTimerPickerMode.hm,
        //     )),
        // heightSpace(22.0),
      ],
    );
  }
}
