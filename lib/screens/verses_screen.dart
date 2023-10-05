import 'package:bhagvat_geeta/controller/favourite_provider.dart';
import 'package:bhagvat_geeta/controller/setting_controller.dart';
import 'package:bhagvat_geeta/models/chapters.dart';
import 'package:bhagvat_geeta/models/favourite.dart';
import 'package:bhagvat_geeta/models/verse.dart';
import 'package:bhagvat_geeta/services/service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class VersesScreen extends StatelessWidget {
  static const routeName = '/versesScreen';
  const VersesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Chapters chapters = Get.arguments['data'];
    return DefaultTabController(
      length: chapters.versesCount ?? 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(chapters.name ?? ''),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(30),
            child: TabBar(
              isScrollable: true,
              tabs: List.generate(chapters.versesCount ?? 2,
                  (i) => Tab(text: 'verse ${i + 1}')),
            ),
          ),
        ),
        body: FutureBuilder(
            future: Services()
                .getVerse(chapters.chapterNumber!, chapters.versesCount!),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              }
              return TabBarView(
                children: List.generate(chapters.versesCount!, (i) {
                  Verse verse = snapshot.data?[i] as Verse;
                  return Container(
                    height: double.infinity,
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    child: SingleChildScrollView(
                        child: Consumer<SettingController>(
                      builder: (context, controller, child) =>
                          Column(children: [
                        
                        Text(
                          '${verse.slok}',
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 30),
                        Text(
                            '${controller.selectedLang == 'english' ? verse.adi?.et : verse.tej?.ht}',
                            style: const TextStyle(fontSize: 16),
                            textAlign: TextAlign.justify),
                        const SizedBox(height: 30),
                        Text(
                            '${controller.selectedLang == 'english' ? verse.raman?.et : verse.chinmay?.hc}',
                            style: const TextStyle(fontSize: 16),
                            textAlign: TextAlign.justify),
                      ]),
                    )),
                  );
                }),
              );
            }),
      ),
    );
  }
}
