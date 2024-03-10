import 'package:fluro/fluro.dart';
import 'package:estebancoder/providers/page_provider.dart';
import 'package:estebancoder/ui/layout/contact/contact_layout.dart';
import 'package:estebancoder/ui/layout/main/main_layout.dart';
import 'package:provider/provider.dart';

class RoutesHandlers {
  static final homeHandler = Handler(handlerFunc: (context, params) {
    if (params['page']!.first != '/') {
      if (params['page']!.first == 'contact') {
        return const ContactLayout();
      }
      final pageProvider = Provider.of<PageProvider>(context!, listen: false);
      pageProvider.createScrollController(params['page']!.first);
    }
    return const MainLayout();
  });
}
