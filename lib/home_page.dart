import 'package:atria_assignment_sambhav07/features/loginpage/mobile/presentation/mobile_login.dart';
import 'package:atria_assignment_sambhav07/features/loginpage/web/presentation/pages/web_login.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (MediaQuery.of(context).size.width >= 450) {
          return const WebLogin();
        } else {
          return const MobileLogin();
        }
      },
    );
  }
}
