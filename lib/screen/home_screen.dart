import 'package:flutter/material.dart';
import 'package:hr_ui/controler/controler.dart';
import 'package:hr_ui/responsive/responsive.dart';
import '../widget/widget.dart';
import "package:provider/provider.dart";

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      key: Provider.of<MenuController>(context, listen: false).scaffoldKey,
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                flex: 2,
                child: Container(
                  child: SideBar(),
                ),
              ),
            Expanded(
              flex: 6,
              child: SingleChildScrollView(
                child: DashBorad(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
