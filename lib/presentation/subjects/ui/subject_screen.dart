import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamon_classroom/presentation/!components/header_widget.dart';
import 'package:hamon_classroom/presentation/!components/loading_widget.dart';
import 'package:hamon_classroom/presentation/classroom/controller/classroom_cubit.dart';
import 'package:hamon_classroom/presentation/subjects/controller/subject_cubit.dart';

class SubjectScreen extends StatelessWidget {
  static const String routeName = "SubjectScreen";

  const SubjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: BlocProvider(
        create: (context) => SubjectCubit()..getSubjects(),
        child: BlocBuilder<SubjectCubit, SubjectState>(
          builder: (context, state) {
            if (state is SubjectLoading) {
              return loadingWidget();
            }
            if (state is SubjectLoaded) {
              final dv = state.data?.subjects;

              return SingleChildScrollView(
                child: Column(
                  children: [
                    headerWidget(
                      'Subjects',),
                    SizedBox(height: 10),
                    ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: state.data?.subjects?.length ?? 0,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.red.withOpacity(.2),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: ListTile(
                            title: Text(dv?[index].name ?? 'N/A'),
                            subtitle: Text(dv?[index].teacher ?? 'N/A'),
                            trailing: Column(
                              children: [
                                Text((dv?[index].credits ?? '0').toString()),
                                Text("Credit"),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              );
            }

            // if(state is SubjectError) {
            //
            // }

            return SizedBox();
          },
        ),
      ),
    );
  }
}
