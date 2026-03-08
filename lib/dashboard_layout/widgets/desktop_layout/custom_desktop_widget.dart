import 'package:flutter/material.dart';
import 'package:responsive_dashboard_layout/dashboard_layout/widgets/custom_item.dart';
import 'package:responsive_dashboard_layout/dashboard_layout/widgets/custom_item2.dart';

class CustomDesktopWidget extends StatelessWidget {
  const CustomDesktopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 2,child: CustomItem()),
        SizedBox(height: 10,),
        Expanded(child: CustomItem2()),
      ],
    );
  }
}
