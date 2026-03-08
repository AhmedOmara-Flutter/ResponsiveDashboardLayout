import 'package:flutter/material.dart';
import 'package:responsive_dashboard_layout/dashboard_layout/widgets/custom_item.dart';

class CustomSilverGridView extends StatelessWidget {
  const CustomSilverGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) => CustomItem(),
      itemCount: 4,
    );
  }
}
