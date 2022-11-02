import 'package:flutter/material.dart';

import 'Widgets/app_header.dart';
import 'Widgets/promo_input.dart';
import 'app_colors.dart';
import 'app_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sirius2023__Mobile-1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var graybox = BoxDecoration(
      borderRadius: BorderRadius.circular(1.0),
      border: Border.all(
          color: Colors.grey.withOpacity(0.5), width: 1.0
      ),
      color: AppColors.background,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: const [
            AppHeader(),
            PromoInput(),
          ],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: AppColors.navBar
        ),
        child: BottomNavigationBar(
          backgroundColor: AppColors.navBar,
          showUnselectedLabels: true,
          selectedLabelStyle: const TextStyle(
            color: AppColors.mainLabel,
            fontSize: 8,
          ),
          unselectedItemColor: AppColors.unactiveLabel,
          selectedItemColor: AppColors.mainLabel,
          unselectedLabelStyle: const TextStyle(
            color: AppColors.unactiveLabel,
            textBaseline: TextBaseline.alphabetic,
            fontSize: 8,
          ),
          selectedIconTheme: const IconThemeData(
            color: AppColors.mainLabel,
          ),
          unselectedIconTheme: const IconThemeData(
            color: AppColors.unactiveLabel,
          ),
          iconSize: 24,
          currentIndex: 1,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(AppIcons.news),
              label: "Новости",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/coupon.png",
                width: 38,
                height: 38
              ),
              label: "Промокод",
            ),
            const BottomNavigationBarItem(
              icon: Icon(AppIcons.referal),
              label: "Реферал",
            ),
            const BottomNavigationBarItem(
              icon: Icon(AppIcons.tariff),
              label: "Тарифы",
            ),
            const BottomNavigationBarItem(
              icon: Icon(AppIcons.playstation),
              label: "Playstation",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/cyber_red.png",
                width: 48,
                height: 32,
                color: AppColors.mainLabel.withOpacity(0.2)
              ),
              label: "Бронирование",
            )
          ]
        ),
      ),
    );
  }
}

