import 'package:flutter/material.dart';

import '../../../model/utils/const/colors.dart';

class OwnerWidgt {
  bool isSearch = true;
  PreferredSizeWidget appbar({required String title}) {
    return AppBar(
      backgroundColor:
          CustomColor.darksecondarycolor, // Set app bar background color
      title: Text(
        title,
        style: const TextStyle(color: Colors.white), // Set app bar title color
      ),
      actions: [
        IconButton(
          onPressed: () {
            // Add turf action
          },
          icon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {
            // Add turf action
          },
          icon: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ],
      centerTitle: true, // Center align the title
      elevation: 0, // Remove elevation
      iconTheme: const IconThemeData(color: Colors.white), // Set icon color
    );
  }

  Widget searchScreen({required double screenHeight}) {
    if (isSearch) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: screenHeight * 0.02),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Row(
          children: [
            Icon(Icons.search, color: CustomColor.darksecondarycolor),
            SizedBox(width: 8),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search turf....',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                ),
                style: TextStyle(color: CustomColor.darksecondarycolor),
              ),
            ),
          ],
        ),
      );
    } else {
      return const SizedBox(
        width: 0,
      );
    }
  }

  Widget buildHeader(
      {required double screenWidth, required double screenHeight}) {
    if (screenWidth < 600) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: CustomColor.darksecondarycolor,
          padding: EdgeInsets.symmetric(
            horizontal: screenHeight * 0.02,
            vertical: screenWidth * 0.01,
          ),
          child: Row(
            children: [
              const Text(
                'Turf List',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: screenWidth * 0.03),
              Expanded(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: screenHeight * 0.02),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.search, color: CustomColor.darksecondarycolor),
                      SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search turf....',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                          ),
                          style:
                              TextStyle(color: CustomColor.darksecondarycolor),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: screenWidth * 0.01),
              IconButton(
                onPressed: () {
                  // Add turf action
                },
                icon: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: CustomColor.darksecondarycolor,
          padding: EdgeInsets.symmetric(
              horizontal: screenHeight * 0.02, vertical: screenWidth * 0.01),
          child: Row(
            children: [
              const Text(
                'Turf List',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: screenWidth * 00.01),
              Expanded(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: screenHeight * 0.02),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.search, color: CustomColor.darksecondarycolor),
                      SizedBox(width: 8),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search turf....',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none,
                          ),
                          style:
                              TextStyle(color: CustomColor.darksecondarycolor),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: screenWidth * 00.01),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColor.mainColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    SizedBox(width: 8),
                    Text(
                      "Add Turf",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  Widget buildTableHeader(double screenWidth) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: screenWidth * 0.32,
          child: const Text(
            'Turf Name',
            textAlign: TextAlign.start,
          ),
        ),
        const Text('Timings'),
        const Text('Status'),
        const Text('Edit'),
      ],
    );
  }

  Widget buildListView(
      {required double screenWidth, required double screenHight}) {
    if (screenWidth < 600) {
      return Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 100,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: screenHight * 0.02),
              child: Card(
                elevation: 4,
                child: ListTile(
                  title: const Text(
                    "Sparta Arena",
                    style: TextStyle(fontSize: 12),
                  ),
                  subtitle: const Text(
                    "Oruvathilkotta, Thiruvananthapuram",
                    style: TextStyle(fontSize: 8),
                  ),
                  trailing: SizedBox(
                    width: screenWidth * 0.46,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "6 am to 12 am",
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(width: screenWidth * 0.017),
                        const Text(
                          "active",
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(width: screenWidth * 0.017),
                        IconButton(
                          onPressed: () {
                            // Add turf action
                          },
                          icon: const Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      );
    } else {
      return Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 100,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: screenHight * 0.02),
              child: Card(
                elevation: 4,
                child: ListTile(
                  leading: Container(
                    width: screenWidth * 0.05,
                    height: screenHight * 0.05,
                    color: Colors.green,
                  ),
                  title: const Text(
                    "Sparta Arena",
                    style: TextStyle(fontSize: 18),
                  ),
                  subtitle: const Text(
                    "Oruvathilkotta, Thiruvananthapuram",
                    style: TextStyle(fontSize: 15),
                  ),
                  trailing: SizedBox(
                    width: screenWidth * 0.41,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("6 am to 12 am"),
                        SizedBox(width: screenWidth * 0.02),
                        const Text("active"),
                        SizedBox(width: screenWidth * 0.02),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.edit),
                          label: const Text("Edit"),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      );
    }
  }
}
