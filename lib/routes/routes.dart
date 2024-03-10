import 'package:fluro/fluro.dart';
import 'package:estebancoder/routes/routes_handlers.dart';

class AppRouter {
  static final FluroRouter fluroRouter = FluroRouter();

  static setUpRoutes() {
    fluroRouter.define("/:page", handler: RoutesHandlers.homeHandler);
  }
}
