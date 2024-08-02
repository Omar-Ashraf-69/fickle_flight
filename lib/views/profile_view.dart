import 'package:fickle_flight/models/profile_item.dart';
import 'package:fickle_flight/utils/app_styles.dart';
import 'package:fickle_flight/utils/assets.dart';
import 'package:fickle_flight/utils/colors.dart';
import 'package:fickle_flight/widgets/custom_bottom.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  static const String routeName = '/profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 0.25,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                          image: AssetImage(Assets.iconsBooking),
                          fit: BoxFit.cover)),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        backgroundColor: whiteColor,
                        child: Icon(
                          Icons.arrow_back,
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: whiteColor,
                        child: Icon(
                          Icons.edit_outlined,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: MediaQuery.sizeOf(context).height * 0.24,
                  child: Container(
                    height: MediaQuery.sizeOf(context).height,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: const BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18),
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        const Text(
                          "Macy Johnson",
                          style: AppStyles.mediumStyle24,
                        ),
                        const Text(
                          "Baguio, Philippines",
                          style: AppStyles.regularStyle16,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          "I like the beach, mountains, forest and everything about nature! :)",
                        ),
                        const Divider(
                          height: 32,
                          thickness: 0.4,
                        ),
                        Column(
                          children: items.map((item) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 12.0),
                              child: Row(
                                children: [
                                  Image.asset(item.image),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    item.title,
                                    style: AppStyles.regularStyle16.copyWith(
                                      color: blackColor,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                        Image.asset(
                          Assets.imagesHaveQuestions,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: MediaQuery.sizeOf(context).height * 0.19,
                    left: 24,
                    child: Image.asset(Assets.iconsOvalProfile)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
