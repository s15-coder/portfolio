import 'package:flutter/cupertino.dart';
import 'package:universal_html/html.dart';

class PageProvider extends ChangeNotifier {
  PageController pageController = PageController();
  final _pages = [
    "home",
    "about",
    "projects",
    "certifications",
  ];

  int currentIndex = 0;

  void createScrollController(String routeName) {
    print(routeName);
    currentIndex = getIndexPage(routeName);
    pageController = PageController(initialPage: currentIndex);
    document.title = formatTitle(_pages[currentIndex]);
    pageController.addListener(() {
      final index = pageController.page?.round() ?? 0;
      if (currentIndex != index) {
        window.history.pushState(null, "ASdasdasd", "#${_pages[index]}");
        currentIndex = index;
        document.title = formatTitle(_pages[currentIndex]);
      }
      notifyListeners();
    });
  }

  String formatTitle(String title) {
    return title[0].toUpperCase() + title.substring(1, title.length);
  }

  int getIndexPage(String routeName) {
    return _pages.contains(routeName) ? _pages.indexOf(routeName) : 0;
  }

  void goTo(int index) {
    window.history.pushState(null, "ASdasdasd", "#/${_pages[index]}");
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeIn,
    );
    notifyListeners();
  }
}
