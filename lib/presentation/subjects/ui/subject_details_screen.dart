import 'package:flutter/material.dart';
import 'package:hamon_classroom/data/entity/subjectsEntity/subjects_entity.dart';
import 'package:sizable/sizable.dart';
import 'package:hamon_classroom/presentation/!components/header_widget.dart';

class SubjectDetailsScreen extends StatelessWidget {
  static const String routeName = "SubjectDetailsScreen";
  const SubjectDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as SubjectsEntity;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          headerWidget("Subject Details"),
          170.sizeh,
          SizedBox(
            width: 100,
            height: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.asset('assets/images/books.jpg',fit: BoxFit.cover,),
            ),
          ),
          25.sizeh,
          headerWidget(args?.name ?? "N/A",fontSize: 18),
          10.sizeh,
          headerWidget(args?.teacher ?? "N/A",fontSize: 14),
          10.sizeh,
          headerWidget("Credit : ${args?.credits}",fontSize: 14),
        ],
      ),
    );
  }
}
