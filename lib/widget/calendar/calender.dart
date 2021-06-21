import 'package:flutter/material.dart';
import 'package:hr_ui/conset/const.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class MyCalender extends StatefulWidget {
  @override
  _MyCalenderState createState() => _MyCalenderState();
}

class _MyCalenderState extends State<MyCalender> {
  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Text(
                  "${DateFormat("MMM, yyyy").format(_dateTime)}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _dateTime =
                            DateTime(_dateTime.year, _dateTime.month - 1);
                      });
                    },
                    child: Icon(
                      Icons.chevron_left,
                      color: kYellow,
                      size: 34,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _dateTime =
                            DateTime(_dateTime.year, _dateTime.month + 1);
                      });
                    },
                    child: Icon(
                      Icons.chevron_right,
                      size: 34,
                      color: kYellow,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          TableCalendar(
            focusedDay: _dateTime,
            firstDay: DateTime.utc(2011),
            lastDay: DateTime(2040),
            headerVisible: false,
            daysOfWeekStyle: DaysOfWeekStyle(
              dowTextFormatter: (date, locale) {
                return DateFormat("EEE").format(date).toUpperCase();
              },
              weekendStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
              weekdayStyle: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onPageChanged: (day) {
              _dateTime = day;
              setState(() {});
            },
            eventLoader: (day) {
              if (day.day == 22 || day.day == 12) {
                return [
                  // Event("Event Name", canBubble: true),
                ];
              }
              return [];
            },
            calendarStyle: CalendarStyle(
              todayDecoration: BoxDecoration(
                color: kYellow,
                shape: BoxShape.circle,
              ),
              markerDecoration: BoxDecoration(
                color: kRed,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
