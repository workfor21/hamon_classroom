import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamon_classroom/presentation/!components/custom_asset_image_widget.dart';
import 'package:hamon_classroom/presentation/!components/header_widget.dart';
import 'package:hamon_classroom/presentation/!components/loading_widget.dart';
import 'package:hamon_classroom/presentation/classroom/controller/classroom_cubit.dart';
import 'package:hamon_classroom/presentation/classroom/ui/classroom_details_screen.dart';

class ClassroomScreen extends StatelessWidget {
  static const String routeName = "ClassroomScreen";

  const ClassroomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (context) => ClassroomCubit()..getclassroom(),
        child: BlocBuilder<ClassroomCubit, ClassroomState>(
          builder: (context, state) {
            if (state is ClassroomLoading) {
              return loadingWidget();
            }
            if (state is ClassroomLoaded) {
              final dv = state.data?.classrooms;

              return RefreshIndicator(
                onRefresh: () async {
                  BlocProvider.of<ClassroomCubit>(context).getclassroom();
                },
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      headerWidget(
                          'Class rooms',),
                      SizedBox(height: 10),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: state.data?.classrooms?.length ?? 0,
                        itemBuilder: (context, index) {
                          return Container(
                            margin:
                                EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                            decoration: BoxDecoration(
                              color: Colors.red.withOpacity(.2),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, ClassroomDetailsScreen.routeName,
                                    arguments: dv?[index]);
                              },
                              child: ListTile(
                                title: Text(dv?[index].name ?? 'N/A'),
                                subtitle: Text(dv?[index].layout ?? 'N/A'),
                                trailing: Column(
                                  children: [
                                    Text((dv?[index].size ?? '0').toString()),
                                    Text("Seats"),
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

            if(state is ClassroomError) {
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
