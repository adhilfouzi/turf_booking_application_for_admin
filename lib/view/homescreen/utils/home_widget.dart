import 'package:flutter/material.dart';

import '../../../model/utils/const/colors.dart';
import '../../../model/utils/const/image_name.dart';

class HomeWidget {
  PreferredSizeWidget appbar({required String title}) {
    return AppBar(
      backgroundColor: Colors.grey[300], // Set app bar background color
      title: Text(
        title,
        style: const TextStyle(color: Colors.black), // Set app bar title color
      ),
      centerTitle: true, // Center align the title
      elevation: 0, // Remove elevation
      iconTheme: const IconThemeData(color: Colors.black), // Set icon color
    );
  }

  Widget drawer() {
    return Drawer(
      child: Container(
        color:
            CustomColor.secondarybackgroundColor, // Set drawer background color
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: CustomColor.mainColor, // Header background color
              ),
              child: Image.asset(
                ImagePath.logo,
                height: 100,
              ),
            ),
            buildListTile(Icons.dashboard, 'Dashboard'),
            buildListTile(Icons.person, 'Owners'),
            buildListTile(Icons.person, 'Users'),
            buildListTile(Icons.request_page, 'Requests'),
            const Divider(color: Colors.white), // Add a divider
            buildListTile(Icons.logout, 'Logout'),
          ],
        ),
      ),
    );
  }

  ListTile buildListTile(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.white), // Set icon color
      title: Text(
        title,
        style: const TextStyle(color: Colors.black), // Set title text color
      ),
      onTap: () {
        // Handle onTap
      },
    );
  }
}
