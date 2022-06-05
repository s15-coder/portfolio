import 'package:fluro/fluro.dart';
import 'package:portfolio/providers/page_provider.dart';
import 'package:portfolio/ui/layout/main_layout.dart';
import 'package:provider/provider.dart';

class RoutesHandlers {
  static final homeHandler = Handler(handlerFunc: (context, params) {
    print(params['page']!.first);
    if (params['page']!.first != '/') {
      final pageProvider = Provider.of<PageProvider>(context!, listen: false);
      pageProvider.createScrollController(params['page']!.first);
      return const MainLayout();
    }
    print('Executed');
  });
}
