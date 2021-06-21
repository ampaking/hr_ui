import 'package:flutter/material.dart';
import 'package:hr_ui/conset/const.dart';

class SearchMenu extends StatelessWidget {
  const SearchMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      mainAxisSize: MainAxisSize.min,
      children: [
        widgetIcon(icon: Icons.search),
        widgetIcon(icon: Icons.send),
        widgetIcon(icon: Icons.notifications_none_rounded),
        widgetIcon(icon: Icons.settings),
      ],
    );
  }
}

Widget widgetIcon({icon}) => Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Icon(
        icon,
        color: kSideMenu,
        size: 27,
      ),
    );
