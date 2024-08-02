import 'package:fickle_flight/models/var.dart';
import 'package:fickle_flight/utils/colors.dart';
import 'package:fickle_flight/views/booking_view.dart';
import 'package:fickle_flight/views/offers_view.dart';
import 'package:fickle_flight/views/profile_view.dart';
import 'package:fickle_flight/views/search_view.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: whiteColor,
        selectedItemColor: blueColor,
        unselectedItemColor: greyColor,
        elevation: 0,
        showUnselectedLabels: true,
        currentIndex: index,
        onTap: (value) {
          if (value == 0) {
            Navigator.pushReplacementNamed(context, '/');
          }
          if (value == 1) {
            Navigator.pushReplacementNamed(context, BookingView.routeName);
          }
          if (value == 2) {
            Navigator.pushReplacementNamed(context, SearchView.routeName);
          }
          if (value == 3) {
            Navigator.pushReplacementNamed(context, OffersView.routeName);
          }
          if (value == 4) {
            Navigator.pushReplacementNamed(context, ProfileView.routeName);
          }

          setState(() {
            index = value;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(
                top: 12.0,
              ),
              child: Icon(Icons.home_outlined),
            ),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(
                top: 12.0,
              ),
              child: Icon(Icons.location_on_outlined),
            ),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(
                top: 12.0,
              ),
              child: Icon(Icons.flight_outlined),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(
                top: 12.0,
              ),
              child: Icon(Icons.local_offer_outlined),
            ),
            label: 'Offers',
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(
                top: 12.0,
              ),
              child: Icon(Icons.person_outlined),
            ),
            label: 'Profile',
          ),
        ]);
  }
}
