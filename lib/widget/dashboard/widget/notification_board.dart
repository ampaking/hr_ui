import 'package:flutter/material.dart';
import 'package:hr_ui/conset/const.dart';

class NotificationBoard extends StatelessWidget {
  const NotificationBoard({
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
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
        padding: EdgeInsets.all(kDefaultPadding),
        child: Column(
          children: [
            Text.rich(
              TextSpan(
                style: TextStyle(
                  fontSize: 18,
                ),
                children: [
                  TextSpan(text: "Good Morning  "),
                  TextSpan(
                      text: "$userName",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "  Today you have $newApplication new Application,\n  Also Flutter dev have 13 application,\n  ReactNative have 9 Application.",
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "  Read More",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
      Container(
        height: double.infinity,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(kDefaultPadding * 2),
            bottomRight: Radius.circular(kDefaultPadding * 2),
          ),
          boxShadow: [
            BoxShadow(
                color: kBlack.withOpacity(0.8),
                blurRadius: 3,
                offset: Offset(3, 3))
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(kDefaultPadding),
            bottomRight: Radius.circular(kDefaultPadding),
          ),
          child: Image.asset(
            "images/tdp.png",
            fit: BoxFit.cover,
          ),
        ),
      ),
    ]);
  }
}
