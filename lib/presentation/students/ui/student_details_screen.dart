import 'package:flutter/material.dart';
import 'package:sizable/sizable.dart';
import 'package:hamon_classroom/data/entity/studentsEntity/students_entity.dart';
import 'package:hamon_classroom/presentation/!components/header_widget.dart';

class StudentDetailsScreen extends StatelessWidget {
  static const String routeName = "StudentDetailsScreen";
  const StudentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as StudentsEntity;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          headerWidget("Student Details"),
          170.sizeh,
          SizedBox(
            width: 100,
            height: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset('assets/images/person.jpg',fit: BoxFit.cover,),
            ),
          ),
          25.sizeh,
          headerWidget(args?.name ?? "N/A",fontSize: 18),
          10.sizeh,
          headerWidget("Age : ${args?.age}",fontSize: 14),
          10.sizeh,
          headerWidget(args?.email ?? "N/A",fontSize: 14),
        ],
      ),
    );
  }
}
