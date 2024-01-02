import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamon_classroom/presentation/!components/custom_asset_image_widget.dart';
import 'package:hamon_classroom/presentation/!components/header_widget.dart';
import 'package:hamon_classroom/presentation/!components/loading_widget.dart';
import 'package:hamon_classroom/presentation/classroom/controller/classroom_cubit.dart';
import 'package:hamon_classroom/presentation/students/controller/students_cubit.dart';
import 'package:hamon_classroom/presentation/students/ui/student_details_screen.dart';

class StudentScreen extends StatelessWidget {
  static const String routeName = "StudentScreen";

  const StudentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: BlocProvider(
        create: (context) =>
        StudentsCubit()
          ..getStudents(),
        child: BlocBuilder<StudentsCubit, StudentsState>(
          builder: (context, state) {
            if (state is StudentLoading) {
              return loadingWidget();
            }
            if (state is StudentLoaded) {
              final dv = state.data?.students;

              return RefreshIndicator(
                onRefresh: () async {
                  BlocProvider.of<StudentsCubit>(context).getStudents();
                },
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      headerWidget(
                        'Students',),
                      SizedBox(height: 10),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: state.data?.students?.length ?? 0,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, StudentDetailsScreen.routeName,
                                  arguments: state.data?.students?[index]);
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 5),
                              decoration: BoxDecoration(
                                color: Colors.red.withOpacity(.2),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: ListTile(
                                title: Text(dv?[index].name ?? 'N/A'),
                                subtitle: Text(dv?[index].email ?? 'N/A'),
                                trailing: Column(
                                  children: [
                                    Text((dv?[index].age ?? '0').toString()),
                                    Text("Age"),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              );
            }

            if(state is StudentError) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    customAssetsImage('assets/images/error.png',size: 150),
                    headerWidget(state.error?.msg ?? "",),
                  ],
                ),
              );
            }

            return SizedBox();
          },
        ),
      ),
    );
  }
}
