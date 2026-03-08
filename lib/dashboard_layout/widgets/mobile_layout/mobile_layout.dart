import 'package:flutter/material.dart';
import 'package:responsive_dashboard_layout/dashboard_layout/widgets/custom_sliver_list_view.dart';
import 'package:responsive_dashboard_layout/dashboard_layout/widgets/mobile_layout/custom_silver_grid_view.dart';

class MobileLayout extends StatelessWidget {
  MobileLayout({super.key}) {
    print("Mobile Layout Created");
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: CustomScrollView(
        slivers: [
          CustomSilverGridView(),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          CustomSliverListView(),
        ],
      ),
    );
  }
}
