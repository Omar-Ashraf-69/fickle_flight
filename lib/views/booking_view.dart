import 'package:fickle_flight/utils/app_styles.dart';
import 'package:fickle_flight/utils/assets.dart';
import 'package:fickle_flight/utils/colors.dart';
import 'package:fickle_flight/widgets/custom_bottom.dart';
import 'package:fickle_flight/widgets/flight_details.dart';
import 'package:flutter/material.dart';

class BookingView extends StatelessWidget {
  const BookingView({super.key});
  static const String routeName = '/booking';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavigationBar(),
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
        ),
        title: const Text(
          'Booking',
          style: AppStyles.mediumStyle16,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.more_vert,
            ),
          ),
        ],
        backgroundColor: whiteColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 12,
            ),
            const Text(
              "Upcoming Bookings",
              style: AppStyles.mediumStyle16,
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              decoration: const ShapeDecoration(
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                color: whiteColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                    child: Image.asset(
                      Assets.iconsBooking,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const FlightDetailsWidget(),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          decoration: const ShapeDecoration(
                            shape: ContinuousRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14)),
                            ),
                            color: lightWhiteColor,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(Assets.iconsFlight),
                              const Text(
                                "United Airlines",
                                style: TextStyle(color: greyColor),
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.timer_outlined,
                                    color: greyColor,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "01 hr 40min",
                                    style: TextStyle(color: greyColor),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          "Show more details...",
                          style: AppStyles.regularStyle15
                              .copyWith(color: lightblueColor),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Divider(
                          thickness: 0.4,
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          decoration: const ShapeDecoration(
                            shape: ContinuousRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14)),
                            ),
                            color: Colors.orange,
                          ),
                          child: Center(
                            child: Text(
                              "Edite Booking",
                              style: AppStyles.regularStyle16.copyWith(
                                color: whiteColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
