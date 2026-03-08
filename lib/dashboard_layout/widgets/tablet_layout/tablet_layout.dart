import 'package:flutter/material.dart';
import 'package:responsive_dashboard_layout/dashboard_layout/widgets/custom_sliver_list_view.dart';
import 'package:responsive_dashboard_layout/dashboard_layout/widgets/tablet_layout/custom_list.dart';

class TabletLayout extends StatelessWidget {
   TabletLayout({super.key}){
    print("Tablet Layout Created");
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: CustomScrollView(
        slivers: [
          CustomList(),
          SliverToBoxAdapter(child: SizedBox(height: 10)),
          CustomSliverListView(),
        ],
      ),
    );
  }
}
