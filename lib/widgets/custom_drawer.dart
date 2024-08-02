
import 'package:fickle_flight/models/drawer_item.dart';
import 'package:fickle_flight/utils/app_styles.dart';
import 'package:fickle_flight/utils/assets.dart';
import 'package:fickle_flight/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: whiteColor,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Image.asset(Assets.iconsOvalProfile),
              title: const Text(
                "Hello",
                style: AppStyles.regularStyle15,
              ),
              subtitle: const Text(
                "Macy Johnson",
                style: AppStyles.mediumStyle16,
              ),
            ),
            const Divider(
              endIndent: 20,
              indent: 20,
              thickness: 0.4,
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: drawerItems.map((item) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 24.0),
                    child: Row(
                      children: [
                        Icon(
                          item.icon,
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Text(
                          item.title,
                          style: AppStyles.mediumStyle16.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            const Spacer(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10),
              child: Text(
                "App version 1.0.1",
                style: AppStyles.regularStyle15.copyWith(
                  color: greyColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
