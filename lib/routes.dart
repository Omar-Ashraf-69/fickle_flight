import 'package:fickle_flight/views/booking_view.dart';
import 'package:fickle_flight/views/home_view.dart';
import 'package:fickle_flight/views/offers_view.dart';
import 'package:fickle_flight/views/profile_view.dart';
import 'package:fickle_flight/views/search_view.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> routes = {
  '/': (context) => const HomeView(),
  BookingView.routeName: (context) => const BookingView(),
  SearchView.routeName: (context) => const SearchView(),
  OffersView.routeName: (context) => const OffersView(),
  ProfileView.routeName: (context) => const ProfileView(),
};
