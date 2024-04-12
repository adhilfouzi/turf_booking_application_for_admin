import 'package:flutter/material.dart';
import 'package:turf_booking_application_for_admin/view/owners/utils/owner_widget.dart';
import '../../utils/home_widget.dart';

class LargeOwnerScreen extends StatelessWidget {
  const LargeOwnerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    OwnerWidgt owner = OwnerWidgt();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            HomeWidget().drawer(
              screenHeight: screenHeight,
              context: context,
              key: 1,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  owner.buildHeader(
                      screenHeight: screenHeight, screenWidth: screenWidth),
                  const SizedBox(height: 16),
                  owner.buildTableHeader(screenWidth),
                  const SizedBox(height: 8),
                  owner.buildListView(
                      screenHight: screenHeight, screenWidth: screenWidth),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
