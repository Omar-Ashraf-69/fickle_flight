
import 'package:fickle_flight/utils/app_styles.dart';
import 'package:fickle_flight/utils/assets.dart';
import 'package:fickle_flight/utils/colors.dart';
import 'package:fickle_flight/widgets/flight_details.dart';
import 'package:fickle_flight/widgets/offer_container.dart';
import 'package:fickle_flight/widgets/trending_destenation_item.dart';
import 'package:flutter/material.dart';

class CustomHomeViewBody extends StatelessWidget {
  const CustomHomeViewBody({
    super.key,
    required this.servicesImages,
  });

  final List<String> servicesImages;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 18,
            ),
            Image.asset(
              Assets.imagesParis,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              "Upcoming Flights",
              style: AppStyles.mediumStyle16,
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 24,
              ),
              decoration: ShapeDecoration(
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                color: whiteColor,
              ),
              child: const FlightDetailsWidget(),
            ),
            const SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: servicesImages.map((image) {
                  return Image.asset(
                    image,
                    width: MediaQuery.sizeOf(context).width * 0.25,
                  );
                }).toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Trending Destinations",
                  style: AppStyles.mediumStyle16,
                ),
                Text(
                  "See all",
                  style: AppStyles.regularStyle16.copyWith(
                      fontWeight: FontWeight.w500, color: lightblueColor),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: servicesImages.map((image) {
                  return const Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: TrendingDestinationsItem(),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              'Offers',
              style: AppStyles.mediumStyle16,
            ),
            const SizedBox(
              height: 16,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  OfferContainerWidget(),
                  SizedBox(
                    width: 18,
                  ),
                  OfferContainerWidget(
                    image: Assets.iconsOffer,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
