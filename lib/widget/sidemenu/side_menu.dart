import 'package:flutter/material.dart';
import 'package:hr_ui/conset/const.dart';
import 'package:hr_ui/responsive/responsive.dart';
import 'package:hr_ui/widget/dashboard/widget/search_menu.dart';

class SideBar extends StatelessWidget {
  final String netImage =
      "https://images.unsplash.com/photo-1533518463841-d62e1fc91373?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        padding: EdgeInsets.only(
            left: 40,
            right: kDefaultPadding,
            top: kDefaultPadding,
            bottom: kDefaultPadding),
        color: kSideMenu,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "NK Management",
              style: TextStyle(
                  color: kYellow, fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            MenuListTile(
              icon: Icons.home,
              title: "Dashbord",
              onTtap: () {},
            ),
            MenuListTile(
              icon: Icons.people,
              title: "Recruitment",
              onTtap: () {},
            ),
            MenuListTile(
              icon: Icons.padding,
              title: "Onboarding",
              onTtap: () {},
            ),
            MenuListTile(
              icon: Icons.report,
              title: "Report",
              onTtap: () {},
            ),
            MenuListTile(
              icon: Icons.calendar_today,
              title: "Calendar",
              onTtap: () {},
            ),
            MenuListTile(
              icon: Icons.settings,
              title: "Settings",
              onTtap: () {},
            ),
            Spacer(),
            Image.network(
              netImage,
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
    );
  }
}

class MenuListTile extends StatelessWidget {
  const MenuListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTtap,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final VoidCallback onTtap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 0.0,
      leading: Icon(
        icon,
        color: kYellow,
        size: 22,
      ),
      title: GestureDetector(
        onTap: onTtap,
        // TODO: follow the instraction no.1 to make this function work ,

        child: Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
