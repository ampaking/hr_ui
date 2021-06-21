import 'package:flutter/material.dart';
import 'package:hr_ui/conset/const.dart';
import 'package:hr_ui/responsive/responsive.dart';
import 'package:provider/provider.dart';
import 'package:hr_ui/dataProvider/data_provider.dart';

class ProfileCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userData = Provider.of<DataProvider>(context).items;
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: CircleAvatar(
                  child: Image.network(
                    userData[0].imageUrl,
                    height: 60,
                    width: 60,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userData[0].name,
                      style: TextStyle(
                        color: kYellow,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (!Responsive.isTablet(context))
                      Text(
                        "WE Help People\nto Find Job",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: kSideMenu, fontSize: 18),
                      ),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            thickness: .5,
            color: kYellow,
          ),
          profileWidget("Next InterView Time", "11:00 AM"),
          profileWidget("Recent Project", "Under veryfied"),
          profileWidget("Update policies", "111")
        ],
      ),
    );
  }

  Widget profileWidget(text, value) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          Text(
            value,
            style: TextStyle(
                color: kYellow, fontSize: 19, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
