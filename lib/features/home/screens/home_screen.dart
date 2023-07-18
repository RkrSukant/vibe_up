import 'package:flutter/material.dart';
import 'package:vibe_up/utils/colors.dart';
import 'package:vibe_up/utils/strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.backgroundColor,
      ),
      bottomNavigationBar: NavigationBar(
          destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home_rounded),
          label: Strings.home,
        ),
        NavigationDestination(
          icon: Icon(Icons.volunteer_activism_rounded),
          label: Strings.activity,
        ),
        NavigationDestination(
          icon: Icon(Icons.calendar_month_rounded),
          label: Strings.bookings,
        ),
        NavigationDestination(
          icon: Icon(Icons.info_rounded),
          label: Strings.learn,
        ),
        NavigationDestination(
          icon: Icon(Icons.account_circle_rounded),
          label: Strings.profile,
        ),
      ],
        animationDuration: const Duration(milliseconds: 1000),

      ),
    );
  }
}
