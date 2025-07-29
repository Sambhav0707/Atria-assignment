import 'package:atria_assignment_sambhav07/core/theme/theme.dart';
import 'package:atria_assignment_sambhav07/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AtriaAssignment());
}

class AtriaAssignment extends StatelessWidget {
  const AtriaAssignment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atria Assignment',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightThemeMode,
      home: HomePage(),
    );
  }
}
