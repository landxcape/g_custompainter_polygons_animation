import 'package:flutter/material.dart';

import '../pages/home_page.dart';

class RootApp extends StatelessWidget {
  const RootApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}