import 'package:flutter/material.dart';
import 'package:hamon_classroom/data/entity/classroomsEntity/classrooms_entity.dart';
import 'package:hamon_classroom/presentation/!components/custom_btn_widget.dart';
import 'package:hamon_classroom/presentation/!components/header_widget.dart';

class ClassroomDetailsScreen extends StatelessWidget {
  static const String routeName = "ClassroomDetailsScreen";

  const ClassroomDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as ClassroomsEntity;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            headerWidget(args?.name ?? "N/A", fontSize: 18),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              width: MediaQuery.of(context).size.width * .8,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(.3),
                  borderRadius: BorderRadius.circular(6)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Add Subject'),
                  SizedBox(
                    width: 10,
                  ),
                  customButtonWidget(title: "Add Subject",function: () {
                    print('add');
                  }),
                ],
              ),
            ),
            SizedBox(height: 10),
            args?.layout?.toLowerCase() == "classroom" ? SizedBox() : ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: args?.size ?? 0,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.airline_seat_recline_extra_outlined, size: 20),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        height: 40,
                        width: MediaQuery.of(context).size.width * .5,
                        color: Colors.black.withOpacity(.2),
                      ),
                      Icon(Icons.airline_seat_recline_extra_outlined, size: 20),
                    ],
                  ),
                );
              },
            ),
            args?.layout?.toLowerCase() != "classroom" ? SizedBox() :GridView.builder(
              padding: EdgeInsets.all(25),
              shrinkWrap: true,
              itemCount: args?.size ?? 0,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1,color: Colors.black.withOpacity(.3)),
                  ),
                  child:
                      Icon(Icons.airline_seat_recline_extra_outlined, size: 20),
                );
              },
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
