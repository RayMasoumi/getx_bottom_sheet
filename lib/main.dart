import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('change theme'),
          centerTitle: true,
        ),
        body: SizedBox(
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.bottomSheet(
                      Container(
                        color: Colors.blueGrey,
                        child: Wrap(
                          children: [
                            ListTile(
                              leading: const Icon(Icons.wb_incandescent_sharp),
                              title: const Text('Light Mode'),
                              onTap: () {
                                Get.changeTheme(
                                  ThemeData.light(),
                                );
                              },
                            ),
                            ListTile(
                              leading:
                                  const Icon(Icons.wb_incandescent_outlined),
                              title: const Text('Dark Mode'),
                              onTap: () {
                                Get.changeTheme(
                                  ThemeData.dark(),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: const Text('press to make the bottom sheet appear')),
            ],
          ),
        ),
      ),
    );
  }
}
