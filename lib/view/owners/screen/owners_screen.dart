import 'package:flutter/material.dart';

import '../../utils/screen/responsive_layout.dart';
import 'extra_small_owner.dart';
import 'large_owner.dart';
import 'medium_owner.dart';
import 'small_owner.dart';

class OwnersScreen extends StatelessWidget {
  const OwnersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        extraSmallBody: ExtraSmallOwnerScreen(),
        smallBody: SmallOwnerScreen(),
        mediumBody: MediumOwnerScreen(),
        largeBody: LargeOwnerScreen(),
      ),
    );
  }
}
