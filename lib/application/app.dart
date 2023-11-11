import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../presentation/ui/screens/auth/home_screen.dart';
import '../presentation/ui/utility/app_colors.dart';

class DonateBlood extends StatelessWidget {
  const DonateBlood({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Donate Blood',
      initialRoute: HomeScreen.routeName,
      theme: ThemeData(
        primarySwatch: MaterialColor(
          AppColor.primaryColor.value,
          AppColor().color,
        ),
      ),
      getPages: [
        GetPage(name: HomeScreen.routeName, page: () => const HomeScreen()),
      ],
    );
  }
}
