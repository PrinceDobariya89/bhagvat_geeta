import 'package:bhagvat_geeta/controller/favourite_provider.dart';
import 'package:bhagvat_geeta/controller/setting_controller.dart';
import 'package:bhagvat_geeta/screens/favourite_screen.dart';
import 'package:bhagvat_geeta/screens/settings_screen.dart';
import 'package:bhagvat_geeta/screens/verses_screen.dart';
import 'package:bhagvat_geeta/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SettingController(),
        ),
        ChangeNotifierProvider(
          create: (context) => FavouriteProvider(),
        )
      ],
      child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Bhagvat Geeta',
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange)
                .copyWith(background: Colors.deepOrange.shade50),
            appBarTheme: AppBarTheme(
                centerTitle: true, backgroundColor: Colors.deepOrange.shade100),
          ),
          initialRoute: HomeScreen.routeName,
          getPages: [
            GetPage(name: HomeScreen.routeName, page: () => HomeScreen()),
            GetPage(
                name: VersesScreen.routeName, page: () => const VersesScreen()),
            GetPage(
                name: FavouriteScreen.routeName,
                page: () => const FavouriteScreen()),
            GetPage(name: SettingScreen.routeName, page: () => SettingScreen()),
          ]),
    );
  }
}
