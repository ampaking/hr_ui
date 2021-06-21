import 'package:flutter/material.dart';
import 'package:hr_ui/conset/const.dart';
import 'package:hr_ui/dataProvider/data_provider.dart';
import 'package:hr_ui/responsive/responsive.dart';
import 'package:provider/provider.dart';

class RecruitmentData extends StatelessWidget {
  const RecruitmentData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final allData = Provider.of<DataProvider>(context).items;
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recruitment Progress",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: kBlack, fontSize: 22),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: 10, horizontal: kDefaultPadding + 5),
                decoration: BoxDecoration(
                    color: kYellow, borderRadius: BorderRadius.circular(100)),
                child: Text(
                  "View All",
                  style: TextStyle(
                    color: kBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                    ),
                  ),
                ),
                children: [
                  tabHeader("Full Name"),
                  tabHeader("Designation"),
                  tabHeader("Status"),
                ],
              ),
              statusRow(
                name: allData[0].name,
                image: allData[0].imageUrl,
                des: allData[0].des,
                status: allData[0].status,
                color: kYellow,
              ),
              statusRow(
                name: allData[1].name,
                image: allData[1].imageUrl,
                des: allData[1].des,
                status: allData[1].status,
                color: kGreen,
              ),
              statusRow(
                name: allData[2].name,
                image: allData[2].imageUrl,
                des: allData[2].des,
                status: allData[2].status,
                color: kRed,
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(kDefaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Showing 4 out of 4 Reasult"),
                Text(
                  "View All",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TableRow statusRow({name, image, des, status, color}) {
    return TableRow(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: CircleAvatar(
                  child: Image.network(
                    image,
                    width: 30,
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Text(name),
            ],
          ),
        ),
        Text(des),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
              height: 10,
              width: 10,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              status,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.more_vert_sharp,
              color: kYellow,
            )
          ],
        ),
      ],
    );
  }

  Widget tabHeader(text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, color: kBlack),
      ),
    );
  }
}
