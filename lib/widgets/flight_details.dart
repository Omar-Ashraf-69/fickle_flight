
import 'package:fickle_flight/utils/app_styles.dart';
import 'package:fickle_flight/utils/assets.dart';
import 'package:fickle_flight/utils/colors.dart';
import 'package:flutter/material.dart';

class FlightDetailsWidget extends StatelessWidget {
  const FlightDetailsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "SIN",
                  style: AppStyles.mediumStyle24,
                ),
                Text(
                  'Singapore',
                  style: AppStyles.regularStyle15,
                ),
              ],
            ),
            Image.asset(Assets.iconsFlightLine),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "LAX",
                  style: AppStyles.mediumStyle24,
                ),
                Text(
                  'Los Angeles',
                  style: AppStyles.regularStyle15,
                ),
              ],
            ),
          ],
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Departs on: 1 May, 08:00 AM",
              style: AppStyles.regularStyle16,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "4 days",
                    style: AppStyles.regularStyle16.copyWith(
                      color: greyColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const TextSpan(
                    text: " to go",
                    style: AppStyles.regularStyle16,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
