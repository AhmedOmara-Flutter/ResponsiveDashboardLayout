import 'package:flutter/material.dart';
import 'package:responsive_dashboard_layout/dashboard_layout/widgets/custom_item.dart';

class CustomList extends StatelessWidget {
  const CustomList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 150,
        child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              AspectRatio(aspectRatio: 1, child: CustomItem()),
          separatorBuilder: (context, index) => SizedBox(height: 10, width: 10),
          itemCount: 15,
        ),
      ),
    );
  }
}
