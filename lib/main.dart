import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:turf_booking_application_for_admin/model/backend/firebase_options.dart';
import 'package:turf_booking_application_for_admin/view/login/screen/login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Turf Booking Application For Admin',
      theme: ThemeData(
        colorScheme:
            const ColorScheme.dark(primary: Color.fromARGB(255, 255, 255, 255)),
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      home: const LoginScreen(),
    );
  }
}
