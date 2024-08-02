import 'package:fickle_flight/utils/app_styles.dart';
import 'package:fickle_flight/utils/assets.dart';
import 'package:fickle_flight/utils/colors.dart';
import 'package:fickle_flight/widgets/custom_bottom.dart';
import 'package:flutter/material.dart';

class OffersView extends StatelessWidget {
  const OffersView({super.key});
  static const String routeName = '/offers';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavigationBar(),
      appBar: AppBar(
        backgroundColor: whiteColor,
        leading: Icon(Icons.arrow_back),
        title: Text(
          'Offers',
          style: AppStyles.mediumStyle16,
        ),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            CustomLimitedOfferWidget(),
            SizedBox(
              height: 12,
            ),
            CustomLimitedOfferWidget(),
          ],
        ),
      ),
    );
  }
}

class CustomLimitedOfferWidget extends StatelessWidget {
  const CustomLimitedOfferWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 18),
      decoration: ShapeDecoration(
        color: whiteColor,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: lightGreenColor,
                ),
                child: Text(
                  "LIMITED OFFER!",
                  style: AppStyles.regularStyle16.copyWith(
                    color: whiteColor,
                  ),
                ),
              ),
              const Icon(
                Icons.favorite,
                color: blueColor,
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          RichText(
            text: TextSpan(
              text: "Get 20% discount ",
              style: AppStyles.mediumStyle16
                  .copyWith(fontSize: 22, color: blackColor),
              children: const [
                TextSpan(
                  text: "with your Master credit cards",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Image.asset(
                Assets.imagesOffer,
                width: MediaQuery.sizeOf(context).width * 0.25,
                fit: BoxFit.cover,
              ),
              Spacer(),
              SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.5,
                child: Text(
                  "Use your mastercard with any transaction and get 20% discount instantly! ",
                  style: AppStyles.regularStyle16,
                ),
              ),
              const Icon(
                Icons.arrow_forward_ios_outlined,
                color: greyColor,
                size: 18,
              )
            ],
          ),
        ],
      ),
    );
  }
}
