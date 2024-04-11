import 'package:flutter/material.dart';
import 'package:turf_booking_application_for_admin/view/login/utils/login_container.dart';
import '../../../model/utils/const/image_name.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              ImagePath.welcome,
              fit: BoxFit.cover,
            ),
          ),
          Center(child: LoginContainer()),
        ],
      ),
    );
  }
}
