import 'package:flutter/material.dart';
import 'package:responsive_dashboard_layout/dashboard_layout/models/drawer_item_model.dart';

class CustomDrawerItem extends StatelessWidget {
  final DrawerItemModel drawerItemModel;
  const CustomDrawerItem({super.key, required this.drawerItemModel});



  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(drawerItemModel.icon, color: Color(0xff706E71),size: 18,),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          drawerItemModel.title,
          style: TextStyle(color: Color(0xff706E71),fontSize: 14),
        ),
      ),
    );
  }
}
