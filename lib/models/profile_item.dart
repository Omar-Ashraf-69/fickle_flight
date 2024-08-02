import 'package:fickle_flight/utils/assets.dart';

class ProfileItemModel {
  final String title;
  final String image;

  ProfileItemModel({required this.title, required this.image});
}

final List<ProfileItemModel> items = [
  ProfileItemModel(title: 'Payment Details', image: Assets.iconsCard),
  ProfileItemModel(title: 'Covid Advisory', image: Assets.iconsRate),
  ProfileItemModel(title: 'Referral Code', image: Assets.iconsPerson),
  ProfileItemModel(title: 'Settings', image: Assets.iconsSettings),
  ProfileItemModel(title: 'Logout', image: Assets.iconsLogout),
];

