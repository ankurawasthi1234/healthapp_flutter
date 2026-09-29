import 'package:flutter/material.dart';
import 'package:healthapp/screen/home_page.dart';
import 'package:healthapp/widgets/health_needs.dart';
import 'package:healthapp/widgets/nearby_doctor.dart';
import 'package:healthapp/widgets/upcoming_card.dart';
import 'package:ionicons/ionicons.dart';

class HomePageResponsive extends StatelessWidget {
  const HomePageResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileUI();
        } else if (constraints.maxWidth < 1100) {
          return tabletUI();
        } else {
          return webUI();
        }
      },
    );
  }

  Widget mobileUI() {
    return const HomePage();
  }

  Widget tabletUI() => Scaffold(appBar: AppBar(title: Text('Table UI')));

  Widget webUI() => Scaffold(appBar: AppBar(title: Text("Web UI")));
}
