import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_dashboard_layout/dashboard_layout/models/drawer_item_model.dart';
import 'package:responsive_dashboard_layout/dashboard_layout/widgets/custom_drawer_item.dart';

class CustomDrawerItemListView extends StatelessWidget {
   CustomDrawerItemListView({super.key});

  final List<DrawerItemModel> _items = [
    DrawerItemModel(title: 'D A S H B O A R D ', icon: FontAwesomeIcons.solidHouse),
    DrawerItemModel(title: 'P R O F I L E', icon: FontAwesomeIcons.solidUser),
    DrawerItemModel(title: 'S E T T I N G S', icon: FontAwesomeIcons.gear),
    DrawerItemModel(title: 'A B O U T', icon: FontAwesomeIcons.info),
    DrawerItemModel(
      title: 'L O G O U T',
      icon: FontAwesomeIcons.rightFromBracket,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder:  (context, index) => CustomDrawerItem(drawerItemModel:_items[index]),
      separatorBuilder: (context, index) => SizedBox(height: 5,),
      itemCount: _items.length,
    );
  }
}
