import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../common/database/data_base.dart';
import '../../common/style/app_colors.dart';
import '../search_screen/search_screen.dart';
import 'popular_detail.dart';
import 'top_detail.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: ListView(
        children: [
          const Text(
            "What do you want to watch?",
            style: TextStyle(
              color: AppColors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 50,
            child: TextFormField(
              readOnly: true,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchScreen(),
                  ),
                );
              },
              cursorColor: AppColors.blue,
              decoration: InputDecoration(
                fillColor: AppColors.blackgray,
                focusColor: AppColors.blackgray,
                hoverColor: AppColors.blackgray,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: AppColors.blackgray,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: AppColors.blackgray,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: AppColors.blue,
                  ),
                ),
                hintText: "Search",
                hintStyle: const TextStyle(
                  color: AppColors.background,
                  fontSize: 20,
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    "assets/icon/icon_search.svg",
                    colorFilter: const ColorFilter.mode(
                      AppColors.background,
                      BlendMode.dst,
                    ),
                    height: 5,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 300,
            child: TopDetail(database: DataBase.topRated),
          ),
          SizedBox(
            height: 400,
            child: PopularDetail(
              popular: DataBase.popular,
              topRated: DataBase.topRated,
            ),
          ),
        ],
      ),
    );
  }
}
