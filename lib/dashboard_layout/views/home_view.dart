import 'package:flutter/material.dart';
import 'package:responsive_dashboard_layout/dashboard_layout/widgets/adaptive_layout.dart';
import 'package:responsive_dashboard_layout/dashboard_layout/widgets/custom_drawer_view.dart';
import 'package:responsive_dashboard_layout/dashboard_layout/widgets/desktop_layout/desktop_layout.dart';
import 'package:responsive_dashboard_layout/dashboard_layout/widgets/mobile_layout/mobile_layout.dart';
import 'package:responsive_dashboard_layout/dashboard_layout/widgets/tablet_layout/tablet_layout.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: CustomDrawerView(),
      backgroundColor: Color(0xffDBDBDB),
      appBar: MediaQuery.of(context).size.width > 700
          ? null
          : AppBar(
              backgroundColor: Colors.black,
              leading: IconButton(
                icon: Icon(Icons.menu, color: Colors.white),
                onPressed: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
              ),
            ),
      body: AdaptiveLayout(
        mobileLayout: (context) => MobileLayout(),
        tabletLayout: (context) => TabletLayout(),
        desktopLayout: (context) => DesktopLayout(),
      ),
    );
  }
}
