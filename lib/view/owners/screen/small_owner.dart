import 'package:flutter/material.dart';

import '../../utils/home_widget.dart';
import '../utils/owner_widget.dart';

class SmallOwnerScreen extends StatelessWidget {
  const SmallOwnerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    OwnerWidgt owner = OwnerWidgt();
    return Scaffold(
      appBar: OwnerWidgt().appbar(title: 'Turf List'),
      drawer: HomeWidget()
          .drawer(screenHeight: screenHeight, context: context, key: 1),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: screenHeight * 0.02, vertical: screenWidth * 0.01),
        child: Row(
          children: [
            SizedBox(width: screenWidth * 0.01),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  owner.searchScreen(screenHeight: screenHeight),
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
