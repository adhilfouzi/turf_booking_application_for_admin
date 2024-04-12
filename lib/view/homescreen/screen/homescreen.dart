import 'package:flutter/material.dart';
import 'package:turf_booking_application_for_admin/model/utils/screen/responsive_layout.dart';
import 'package:turf_booking_application_for_admin/view/homescreen/screen/extra_small_home.dart';
import 'package:turf_booking_application_for_admin/view/homescreen/screen/large_home.dart';
import 'package:turf_booking_application_for_admin/view/homescreen/screen/medium_home.dart';
import 'package:turf_booking_application_for_admin/view/homescreen/screen/small_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        smallBody: SmallHomeScreen(),
        mediumBody: MediumHomeScreen(),
        largeBody: LargeHomeScreen(),
        extraSmallBody: ExtraSmallHomeScreen(),
      ),
    );
  }
}
