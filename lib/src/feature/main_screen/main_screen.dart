import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/src/feature/main_screen/popular_detail.dart';
import 'package:movie_app/src/feature/main_screen/top_detail.dart';

import '../../common/database/data_base.dart';
import '../../common/style/app_colors.dart';

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
                    color: AppColors.background,
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
