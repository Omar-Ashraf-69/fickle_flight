
import 'package:fickle_flight/utils/app_styles.dart';
import 'package:fickle_flight/utils/assets.dart';
import 'package:fickle_flight/utils/colors.dart';
import 'package:flutter/material.dart';

class OfferContainerWidget extends StatelessWidget {
  const OfferContainerWidget({
    super.key,
    this.image,
  });
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.82,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: ShapeDecoration(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        color: whiteColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            image ?? Assets.imagesOffer,
            width: MediaQuery.sizeOf(context).width * 0.29,
            fit: BoxFit.cover,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.4,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "20% discount ",
                        style: AppStyles.mediumStyle16.copyWith(
                          color: blackColor,
                        ),
                      ),
                      const TextSpan(
                        text: "for mastercard users",
                        style: AppStyles.regularStyle16,
                      ),
                    ],
                  ),
                ),
              ),
              const Text(
                "Limited time offer!",
                style: AppStyles.regularStyle16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}