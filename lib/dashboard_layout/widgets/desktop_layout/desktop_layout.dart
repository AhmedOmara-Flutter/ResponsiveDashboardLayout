import 'package:flutter/material.dart';
import 'package:responsive_dashboard_layout/dashboard_layout/widgets/custom_drawer_view.dart';
import 'package:responsive_dashboard_layout/dashboard_layout/widgets/desktop_layout/custom_desktop_widget.dart';
import 'package:responsive_dashboard_layout/dashboard_layout/widgets/tablet_layout/tablet_layout.dart';

class DesktopLayout extends StatelessWidget {
   DesktopLayout({super.key}){
    print("Desktop Layout Created");
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: CustomDrawerView()),
        Expanded(flex: 3, child: TabletLayout()),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(top: 10,bottom: 10,right: 10),
            child: CustomDesktopWidget(),
          ),
        ),
      ],
    );
  }
}
