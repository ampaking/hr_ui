import 'package:flutter/material.dart';
import 'package:hr_ui/conset/const.dart';
import 'package:hr_ui/controler/controler.dart';
import 'package:hr_ui/responsive/responsive.dart';
import 'package:hr_ui/widget/dashboard/widget/search_menu.dart';
import 'package:provider/provider.dart';

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!Responsive.isDesktop(context))
            IconButton(
              onPressed: Provider.of<MenuController>(context, listen: false)
                  .controlMenu,
              icon: Icon(
                Icons.menu,
                color: kYellow,
              ),
            ),
          Text(
            "Dashboard",
            style: TextStyle(
                color: kYellow, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          if (!Responsive.isMobile(context)) SearchMenu()
        ],
      ),
    );
  }
}
