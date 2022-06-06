import 'package:flutter/material.dart';
import 'package:portfolio/providers/carousel_provider.dart';
import 'package:portfolio/providers/page_provider.dart';
import 'package:portfolio/routes/routes.dart';
import 'package:provider/provider.dart';

void main() {
  AppRouter.setUpRoutes();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PageProvider()),
        ChangeNotifierProvider(create: (_) => CarouselProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRouter.fluroRouter.generator,
        title: 'Material App',
        initialRoute: '/home',
      ),
    );
  }
}
