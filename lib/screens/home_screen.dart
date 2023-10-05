import 'package:bhagvat_geeta/controller/controller.dart';
import 'package:bhagvat_geeta/screens/chapter_screen.dart';
import 'package:bhagvat_geeta/screens/favourite_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/homeScreen';
  HomeScreen({super.key});

  final GeetaController controller = Get.put(GeetaController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GeetaController>(
      builder: (controller) {
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              onTap: controller.changePage,
              currentIndex: controller.currentpage,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.book_outlined),
                    label: 'Chapters',
                    activeIcon: Icon(Icons.book_rounded)),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_outline_rounded),
                    label: 'Favourite',
                    activeIcon: Icon(Icons.favorite_rounded)),
              ]),
          body: IndexedStack(
              index: controller.currentpage,
              children: const [ChapterScreen(), FavouriteScreen()]),
        );
      },
    );
  }
}
