import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:matrix/matrix.dart' show Client, HiveCollectionsDatabase;
import 'package:message_box_flutter/screen/splashscreen_page/Splashscreen.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import 'dark_theme/theme.dart';
import 'dark_theme/theme_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  final client = Client(
    'Matrix Example Chat',
    databaseBuilder: (_) async {
      final dir = await getApplicationSupportDirectory();
      final db = HiveCollectionsDatabase('matrix_example_chat', dir.path);
      await db.open();
      return db;
    },
  );
  await client.init();
  runApp(MyApp(client: client));
}

class MyApp extends StatelessWidget {
  final Client client;

  const MyApp({required this.client, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, child) => Provider<Client>(
        create: (context) => client,
        child: child,
      ),
      debugShowCheckedModeBanner: false,
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      themeMode: ThemeService().theme,
      home: const Splashscreen(),
    );
  }
}
