import 'package:fickle_flight/utils/app_styles.dart';
import 'package:fickle_flight/widgets/custom_bottom.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
  static const String routeName = '/search';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: Center(
        child: Text(
          "Search View",
          style: AppStyles.mediumStyle24,
        ),
      ),
    );
  }
}
