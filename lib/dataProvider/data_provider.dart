import 'dart:core';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data.dart';

class DataProvider with ChangeNotifier {
  List<Data> _userData = [
    Data(
        name: "Hesuko",
        des: "UI",
        status: "Practical",
        imageUrl:
            "https://images.pexels.com/photos/761977/pexels-photo-761977.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
    Data(
        name: "Meekkeeku",
        des: "UX",
        status: "Practical",
        imageUrl:
            "https://images.pexels.com/photos/38554/girl-people-landscape-sun-38554.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
    Data(
        name: "KukaSa",
        des: "Flutter Dev",
        status: "Final Round",
        imageUrl:
            "https://images.pexels.com/photos/556068/pexels-photo-556068.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
    Data(
        name: "DentaDen",
        des: "Flutter Dev",
        status: "Final Round",
        imageUrl:
            "https://images.pexels.com/photos/556068/pexels-photo-556068.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
    Data(
        name: "EzudugHou ",
        des: "Flutter Dev",
        status: "Final Round",
        imageUrl:
            "https://images.pexels.com/photos/556068/pexels-photo-556068.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"),
  ];
  List<Data> get items {
    return [..._userData];
  }

  void addData() {
    notifyListeners();
  }
}
