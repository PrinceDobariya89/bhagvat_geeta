import 'package:bhagvat_geeta/screens/settings_screen.dart';
import 'package:bhagvat_geeta/screens/verses_screen.dart';
import 'package:bhagvat_geeta/services/service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChapterScreen extends StatelessWidget {
  const ChapterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                // title: const Text('chapters'),
                actions: [
                  IconButton(
                      onPressed: () {
                        Get.toNamed(SettingScreen.routeName);
                      },
                      icon: const Icon(Icons.settings_rounded))
                ],
                expandedHeight: 200,
                collapsedHeight: 60,
                pinned: true,
                flexibleSpace: const FlexibleSpaceBar(
                  centerTitle: true,
                  background: Image(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          'https://rukminim2.flixcart.com/image/832/832/poster/x/r/r/krishna-as-parthasarathi-the-chariot-driver-of-arjuna-in-original-imaehssydve3s2e6.jpeg')),
                  title: Text(
                    'Chapters',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              FutureBuilder(
                future: Services().getChapter(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const SliverToBoxAdapter(
                        child: Center(child: CircularProgressIndicator()));
                  }
                  return SliverList.builder(
                    itemCount: snapshot.data?.length,
                    itemBuilder: (context, index) {
                      String? chapterName = snapshot.data?[index].name;
                      int? versesName = snapshot.data?[index].versesCount;
                      return ListTile(
                        onTap: () {
                          Get.toNamed(VersesScreen.routeName,
                              arguments: {'data': snapshot.data?[index]});
                        },
                        leading: CircleAvatar(
                          radius: 15,
                          child: Text('${index + 1}'),
                        ),
                        title: Text(
                          chapterName ?? '',
                          style: const TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(
                          '$versesName श्लोक',
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios_rounded),
                      );
                    },
                  );
                },
              )
            ],
          ),
        );
  }
}