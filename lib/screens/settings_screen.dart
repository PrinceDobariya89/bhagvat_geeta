import 'package:bhagvat_geeta/controller/setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatelessWidget {
  static const routeName = '/settingScreen';
  SettingScreen({super.key});

   final  SettingController con = Get.put(SettingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ListTile(
                  leading: const Icon(Icons.language_outlined),
                  title: const Text('Languages'),
                  subtitle: const Text('change language'),
                  trailing: Obx(
                    () => IconButton(
                      onPressed: con.change,
                      icon: Icon(con.isShow.value
                          ? Icons.arrow_drop_up_rounded
                          : Icons.arrow_drop_down_rounded),
                    ),
                  )),
              Obx(
                () => con.isShow.value
                    ? Consumer<SettingController>(builder: (context,controller,child) => Column(
                        children: [
                          RadioListTile.adaptive(
                            value: controller.language[0],
                            groupValue: controller.selectedLang,
                            onChanged: (value) {
                              controller.changeLanguage(value);
                            },
                            title: const Text('English'),
                          ),
                          RadioListTile.adaptive(
                            value: controller.language[1],
                            groupValue: controller.selectedLang,
                            onChanged: (value) {
                              controller.changeLanguage(value);
                            },
                            title: const Text('Hindi'),
                          ),
                        ],
                      ),)
                    : const SizedBox(),
              ),
              Flexible(child: Container()),
              ElevatedButton(onPressed: () {}, child: const Text('Save'))
            ],
          ),
        ));
  }
}
