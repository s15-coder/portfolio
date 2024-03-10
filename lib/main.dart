import 'package:flutter/material.dart';
import 'package:portfolio/providers/contact_form_provider.dart';
import 'package:portfolio/providers/menu_provider.dart';
import 'package:portfolio/providers/page_provider.dart';
import 'package:portfolio/routes/routes.dart';
import 'package:provider/provider.dart';

void main() {
  AppRouter.setUpRoutes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PageProvider()),
        ChangeNotifierProvider(create: (_) => MenuProvider()),
        ChangeNotifierProvider(create: (_) => ContactFormProvider()),
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
