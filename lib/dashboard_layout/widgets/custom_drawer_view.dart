import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_dashboard_layout/dashboard_layout/widgets/custom_drawer_item_list_view.dart';

class CustomDrawerView extends StatelessWidget {
  const CustomDrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xffDBDBDB),
      child: Column(
        children: [
          DrawerHeader(child: Icon(FontAwesomeIcons.solidHeart, size: 40)),
          CustomDrawerItemListView(),
        ],
      ),
    );
  }
}
