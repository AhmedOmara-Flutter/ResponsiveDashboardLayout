import 'package:flutter/material.dart';
import 'package:responsive_dashboard_layout/dashboard_layout/widgets/custom_item2.dart';

class CustomSliverListView extends StatelessWidget {
  const CustomSliverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemBuilder: (context, index) => CustomItem2(),
      separatorBuilder: (context, index) => SizedBox(height: 10,),
      itemCount: 12,
    );
  }
}
