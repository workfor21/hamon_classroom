import 'package:flutter/material.dart';
import 'package:hamon_classroom/presentation/dashboard/controller/dashboard_provider.dart';
import 'package:provider/provider.dart';
import 'package:sizable/sizable.dart';

class DashboardScreen extends StatelessWidget {
  static const String routeName = "DashboardScreen";

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DashboardProvider(),
      builder: (context, state) {
        return Consumer<DashboardProvider>(
          builder: (context, value, widget) {
            return Scaffold(
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  title: ListTile(
                    title: Text(
                      "Hello,",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Good Morning!'),
                  ),
                  toolbarHeight: 100,
                  actions: [
                    InkWell(
                      onTap: () {
                        value.isGrid = !value.isGrid;
                        value.refresh();
                      },
                      child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Icon(
                            value.isGrid == true
                                ? Icons.grid_4x4
                                : Icons.format_line_spacing_sharp,
                          )),
                    )
                  ],
                ),
                body: Column(
                  children: [
                    80.sizeh,
                    value.isGrid != true
                        ? SizedBox()
                        : GridView.builder(
                            shrinkWrap: true,
                            itemCount: value.titleList.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 5,
                            ),
                            itemBuilder: (context, index) {
                              return titleBox(
                                  context,
                                  value.titleList[index].title ?? '',
                                  value.titleList[index].redirection ?? '',
                                  value.titleList[index].color ?? Colors.green,
                                  value.titleList[index].icon ?? Icons.edit);
                            },
                          ),
                    value.isGrid == true
                        ? SizedBox()
                        : ListView.builder(
                            shrinkWrap: true,
                            itemCount: value.titleList.length,
                            itemBuilder: (context, index) {
                              return titleBox(
                                  context,
                                  value.titleList[index].title ?? '',
                                  value.titleList[index].redirection ?? '',
                                  value.titleList[index].color ?? Colors.green,
                                  value.titleList[index].icon ?? Icons.edit,
                                  isIcon: false);
                            },
                          )
                  ],
                ));
          },
        );
      },
    );
  }
}

titleBox(BuildContext context, String title, String redirection, Color color,
    IconData icon,
    {bool isIcon = true}) {
  return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color.withOpacity(.3),
      ),
      child: InkWell(
        onTap: () {
          print(redirection);
          Navigator.pushNamed(context, redirection);
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isIcon != true
                  ? SizedBox()
                  : Icon(
                      icon,
                      color: color,
                    ),
              Text(
                title,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1),
              ),
            ],
          ),
        ),
      ));
}
