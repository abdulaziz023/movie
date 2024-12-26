import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../common/database/data_base.dart';
import '../../common/model/movie_model.dart';
import '../../common/style/app_colors.dart';
import '../../common/utils/functions.dart';
import '../detail_screen/detail_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  Set<MovieModel> result = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          children: [
            const SizedBox(height: 30),
            SizedBox(
              height: 50,
              child: TextFormField(
                autofocus: true,
                onTap: () {
                  setState(() {
                    result.clear();
                  });
                },
                onFieldSubmitted: (value) {
                  setState(() {
                    result.addAll(
                      search(
                        database: DataBase.movies,
                        input: value.trim(),
                      ),
                    );
                  });
                },
                onTapAlwaysCalled: true,
                onSaved: (newValue) {
                  setState(() {});
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
                          AppColors.background, BlendMode.dst),
                      height: 5,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: result.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(
                            id: result.elementAt(index).id!,
                          ),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(17),
                            child: SizedBox(
                              height: 120,
                              width: 95,
                              child: Image.asset(
                                result.elementAt(index).mainPicture!,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                " ${result.elementAt(index).name!}",
                                style: const TextStyle(
                                    fontSize: 18, color: AppColors.white),
                              ),
                              detailed(
                                context,
                                all: result.elementAt(index).rate!,
                                path: "assets/icon/icon_star.svg",
                              ),
                              detailed(
                                context,
                                all: result.elementAt(index).year!.year,
                                path: "assets/icon/icon_calendar.svg",
                              ),
                              detailed(
                                context,
                                all:
                                    "${result.elementAt(index).duration!.inMinutes} minutes",
                                path: "assets/icon/icon_clock.svg",
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget detailed(BuildContext context,
      {required Object all, required String path}) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          SvgPicture.asset(path.trim()),
          Text(
            "$all",
            style: const TextStyle(
              fontSize: 13,
              color: AppColors.white,
            ),
          )
        ],
      ),
    );
  }
}
