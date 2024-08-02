import 'package:fickle_flight/models/var.dart';
import 'package:fickle_flight/utils/assets.dart';
import 'package:fickle_flight/utils/colors.dart';
import 'package:fickle_flight/widgets/custom_bottom.dart';
import 'package:fickle_flight/widgets/custom_drawer.dart';
import 'package:fickle_flight/widgets/custom_home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightWhiteColor,
      bottomNavigationBar: const CustomBottomNavigationBar(),
      appBar: AppBar(
        backgroundColor: whiteColor,
        leading: Builder(
          builder: (context) => GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: const Icon(
              Icons.menu,
              size: 32,
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 3.0),
          child: Image.asset(
            Assets.iconsLogo,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Image.asset(Assets.iconsProfile),
          ),
        ],
      ),
      body: const CustomHomeViewBody(servicesImages: servicesImages),
      drawer: const CustomDrawer(),
    );
  }

}
