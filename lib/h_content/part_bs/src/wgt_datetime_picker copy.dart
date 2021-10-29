// import 'package:clay/c_config/config.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:intl/date_symbol_data_file.dart';
// import 'package:table_calendar/table_calendar.dart';

// // ignore: must_be_immutable
// class DateTimePickerWidget extends StatefulWidget {
//   DateTimePickerWidget();
//   @override
//   _DateTimePickerWidgetState createState() => _DateTimePickerWidgetState();
// }

// class _DateTimePickerWidgetState extends State<DateTimePickerWidget>
//     with TickerProviderStateMixin {
//   static Color thumbColor = Color(0xFFCCCCCC);
//   CalendarFormat _calendarFormat = CalendarFormat.month;
//   DateTime _focusedDay = DateTime.now();
//   DateTime? _selectedDay;

//   final kNow = DateTime.now();
//   final kFirstDay = DateTime(
//       DateTime.now().year, DateTime.now().month - 3, DateTime.now().day);
//   final kLastDay = DateTime(
//       DateTime.now().year, DateTime.now().month + 3, DateTime.now().day);
//   @override
//   void initState() {
//     super.initState();

//     _selectedDay = _focusedDay;
//   }

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     ///프로파일 이미지를 가져옴.
//     debugPrint('=====> ${Get.deviceLocale?.languageCode}');
//     return Container(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Container(
//             // height: MySize.safeHeight / 2,
//             child: TableCalendar(
//               locale: Get.locale?.languageCode,
//               // locale: 'en_US',
//               firstDay: kFirstDay,
//               lastDay: kLastDay,

//               //헤드 부분의 타이틀 스타일
//               headerStyle: HeaderStyle(
//                 headerMargin: EdgeInsets.only(left: 200.0),
//                 formatButtonShowsNext: true,
//                 formatButtonVisible: false,
//                 titleCentered: true,
//                 titleTextStyle: baseStyle,
//                 // leftChevronMargin: EdgeInsets.only(left: 200.0),
//                 leftChevronIcon: Icon(Icons.chevron_left, color: Colors.black),
//                 rightChevronIcon:
//                     Icon(Icons.chevron_right, color: Colors.black),
//                 formatButtonDecoration: BoxDecoration(
//                   color: Colors.black,
//                   borderRadius: BorderRadius.circular(16.0),
//                 ),
//               ),
//               daysOfWeekStyle: DaysOfWeekStyle(
//                 // weekendStyle: TextStyle().copyWith(color: Colors.orange[800]),
//                 weekendStyle: TextStyle().copyWith(
//                   color: Color(0xff333333),
//                   fontSize: 18,
//                 ),
//                 weekdayStyle: TextStyle().copyWith(
//                   color: Color(0xff333333),
//                   fontSize: 18,
//                 ),
//               ),
//               // 달력 본문 부분 스타일
//               calendarStyle: CalendarStyle(
//                 markersMaxCount: 0,
//                 // markerDecoration: const BoxDecoration(
//                 //   color: Colors.orange,
//                 //   shape: BoxShape.circle,
//                 // ),
//                 // weekendTextStyle: TextStyle(color: thumbColor),
//                 weekendTextStyle:
//                     TextStyle(fontSize: 18, color: Color(0xFF666666)),
//                 holidayTextStyle: TextStyle(color: Colors.red),
//                 defaultTextStyle:
//                     TextStyle(fontSize: 18, color: Color(0xFF666666)),
//                 todayTextStyle:
//                     TextStyle(fontSize: 18, color: Color(0xFF666666)),
//                 outsideDaysVisible: false,
//                 outsideTextStyle: TextStyle(color: thumbColor),
//               ),
//               // availableCalendarFormats: {
//               //   CalendarFormat.month: '월'
//               // }, //달, 주 , 월 등에서 월로 고정
//               focusedDay: _focusedDay,

//               calendarFormat: _calendarFormat,
//               selectedDayPredicate: (day) {
//                 return isSameDay(_selectedDay, day);
//               },
//               onDaySelected: (selectedDay, focusedDay) {
//                 if (!isSameDay(_selectedDay, selectedDay)) {
//                   setState(() {
//                     _selectedDay = selectedDay;
//                     _focusedDay = focusedDay;
//                   });
//                 }
//               },
//               eventLoader: (day) {
//                 return [];
//                 // return _getEventsForDay(day);
//               },
//               // onVisibleDaysChanged: _onVisibleDaysChanged,
//               onPageChanged: (focusedDay) async {
//                 focusedDay.month;
//                 int last =
//                     DateTime(focusedDay.year, focusedDay.month + 1, 0).day;
//                 DateTime startDay =
//                     DateTime(focusedDay.year, focusedDay.month, 1);

//                 DateTime lastDay =
//                     DateTime(focusedDay.year, focusedDay.month, last);
//                 // final _controller = EventController.to;
//                 // final items = await _controller.getMonthData(
//                 //     start: startDay, end: lastDay);

//                 // setState(() {
//                 //   _selectedEvents.value = items;
//                 // });

//                 // No need to call `setState()` here
//                 _focusedDay = focusedDay;
//               },
//               calendarBuilders: CalendarBuilders(
//                 singleMarkerBuilder: (context, day, item) {
//                   // if (day.weekday == DateTime.sunday) {
//                   // final text = Const.df.format(item.id);

//                   return Center(
//                     child: Text(
//                       'testing',
//                       style: TextStyle(color: Colors.orange, fontSize: 10.0),
//                     ),
//                   );
//                   // }
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   //--------------------------------
//   // 날짜가 선택 되었을때 현재 날짜와 다르게 보임 위의 예제 가 있음.
//   void _onDaySelected(DateTime start, DateTime end) {
//     // setState(() {
//     //   _selectedEvents = events;
//     // });
//     //
//   }
// }
