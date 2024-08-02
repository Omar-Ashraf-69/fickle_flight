import 'package:flutter/material.dart';

class DrawerItemModel {
  final String title;
  final IconData icon;

  DrawerItemModel({required this.title, required this.icon});
}

final List<DrawerItemModel> drawerItems = [
  DrawerItemModel(title: 'Profile', icon: Icons.person_2_outlined),
  DrawerItemModel(title: 'All Booking', icon: Icons.route),
  DrawerItemModel(title: 'Favourites', icon: Icons.notifications_outlined),
  DrawerItemModel(title: 'Get Help', icon: Icons.email_outlined),
  DrawerItemModel(title: 'Covid Advisory', icon: Icons.calendar_month_outlined),
  DrawerItemModel(title: 'Rate us', icon: Icons.star_outline),
];
