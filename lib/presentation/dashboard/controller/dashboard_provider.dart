import 'package:flutter/material.dart';

class DashboardProvider extends ChangeNotifier {
  bool isGrid = false;

  refresh() {
    notifyListeners();
  }


  List<TitleListModel> titleList = [
    TitleListModel(title: "Students",color: Colors.green,icon: Icons.school,redirection: "StudentScreen"),
    TitleListModel(title: "Subjects",color: Colors.blue,icon: Icons.menu_book_outlined,redirection: "SubjectScreen"),
    TitleListModel(title: "Classrooms",color: Colors.red,icon: Icons.door_sliding_outlined,redirection: "ClassroomScreen"),
    TitleListModel(title: "Registration",color: Colors.orange,icon: Icons.edit,redirection: "RegistrationScreen"),
  ];
}

class TitleListModel {
  String? title;
  Color? color;
  IconData? icon;
  String? redirection;

  TitleListModel({this.title,this.color,this.icon,this.redirection});
}
