import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'core/theme/text_styles.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
              child: Text(
                "Profile Screen",
                style: titleTextStyle,
              ),
            )));
  }
}
