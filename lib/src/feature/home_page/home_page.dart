import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../common/style/app_colors.dart';
import '../main_screen/main_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (value) {
          setState(() {
            index = value;
          });
        },
        children: const [
          MainScreen(),
          Center(child: Text("Search Screen")), // Placeholder
          Center(child: Text("Watchlist Screen")), // Placeholder
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.background,
        onTap: (value) {
          setState(() {
            index = value;
          });
          _pageController.animateToPage(
            value,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icon/icon_home.svg",
              height: 25,
              color: index == 0 ? AppColors.blue : AppColors.blackgray,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icon/icon_search.svg",
              height: 25,
              color: index == 1 ? AppColors.blue : AppColors.blackgray,
            ),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icon/icon_bookmark.svg",
              height: 25,
              color: index == 2 ? AppColors.blue : AppColors.blackgray,
            ),
            label: "Watchlist",
          ),
        ],
        selectedItemColor: AppColors.blue,
        unselectedItemColor: AppColors.blackgray,
        selectedIconTheme: const IconThemeData(color: AppColors.blue),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
