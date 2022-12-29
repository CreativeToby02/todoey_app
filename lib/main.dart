import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home.dart';
import 'models/task_data.dart';

// import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    const Todoey(),
    // DevicePreview(
    //   enabled: true,
    //   builder: (context) => const Todoey(),
    // ),
  );
}

class Todoey extends StatelessWidget {
  const Todoey({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        // useInheritedMediaQuery: true,
        // locale: DevicePreview.locale(context),
        // builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}
