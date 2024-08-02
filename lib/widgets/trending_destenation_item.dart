
import 'package:fickle_flight/utils/app_styles.dart';
import 'package:fickle_flight/utils/assets.dart';
import 'package:fickle_flight/utils/colors.dart';
import 'package:flutter/material.dart';

class TrendingDestinationsItem extends StatelessWidget {
  const TrendingDestinationsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: ShapeDecoration(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: whiteColor,
      ),
      width: MediaQuery.sizeOf(context).width * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 4,
          ),
          Image.asset(
            Assets.imagesBeach1,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          const SizedBox(
            height: 12,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Boracay",
                    style: AppStyles.mediumStyle16,
                  ),
                  Text(
                    "Philippines",
                    style: AppStyles.regularStyle16,
                  )
                ],
              ),
              SizedBox(
                width: 24,
              ),
              Text("5D4N"),
            ],
          )
        ],
      ),
    );
  }
}
