import 'package:flutter/material.dart';
import 'package:estebancoder/providers/contact_form_provider.dart';
import 'package:estebancoder/providers/page_provider.dart';
import 'package:estebancoder/routes/routes.dart';
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
        ChangeNotifierProvider(create: (_) => ContactFormProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRouter.fluroRouter.generator,
        title: "Estebancoder",
        initialRoute: '/home',
      ),
    );
  }
}
