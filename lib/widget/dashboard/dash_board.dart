import 'package:flutter/material.dart';
import 'package:hr_ui/conset/const.dart';
import 'package:hr_ui/responsive/responsive.dart';
import 'package:hr_ui/widget/calendar/calender.dart';
import '/widget/widget.dart';

class DashBorad extends StatefulWidget {
  @override
  _DashBoradState createState() => _DashBoradState();
}

class _DashBoradState extends State<DashBorad> {
  final String userName = "User Name";
  final int newApplication = 21;
  final String assetsImage = "assets/image/tdp.png";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding / 2),
      padding: EdgeInsets.all(kDefaultPadding / 2),
      decoration: BoxDecoration(
        color: kBcolor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          HeaderWidget(),
          SingleChildScrollView(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      if (Responsive.isDesktop(context))
                        ResNoti(
                          userName: userName,
                          newApplication: newApplication,
                          assetsImage: assetsImage,
                        ),
                      // ResNoti(
                      //   userName: userName,
                      //   newApplication: newApplication,
                      // ),
                      SizedBox(
                        height: kDefaultPadding,
                      ),
                      if (Responsive.isMobile(context)) ...{
                        ProfileCardWidget(),
                        SizedBox(
                          height: kDefaultPadding,
                        ),
                        MyCalender(),
                        SizedBox(
                          height: kDefaultPadding,
                        ),
                      },
                      RecruitmentData(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          MyCalender(),
                          ProfileCardWidget(),
                        ],
                      ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ResNoti extends StatelessWidget {
  const ResNoti({
    Key? key,
    required this.userName,
    required this.newApplication,
    this.assetsImage,
  }) : super(key: key);

  final String userName;
  final int newApplication;
  final String? assetsImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: kYellow,
        borderRadius: BorderRadius.all(
          Radius.circular(kDefaultPadding),
        ),
      ),
      child: NotificationBoard(
          userName: userName,
          newApplication: newApplication,
          assetsImage: assetsImage),
    );
  }
}
