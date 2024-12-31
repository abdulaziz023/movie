import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../common/database/data_base.dart';
import '../../common/model/movie_model.dart';
import '../../common/service/db.dart';
import '../../common/style/app_colors.dart';
import '../detail_screen/detail_screen.dart';

class WatchListScreen extends StatefulWidget {
  const WatchListScreen({super.key});

  @override
  State<WatchListScreen> createState() => _WatchListScreenState();
}

class _WatchListScreenState extends State<WatchListScreen> {
  List<MovieModel> result = DataBase.movies;
  Set<int> id = {};

  @override
  void initState() {
    keys();
    super.initState();
  }

  void keys() async {
    id = stringToInt(await DB.getAllKeys());
    setState(() {});
  }

  Set<int> stringToInt(Set<String> set) {
    Set<int> toInt = {};
    for (var element in set) {
      toInt.add(int.parse(element));
    }
    return toInt;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: const Text(
          "Watch list",
          style: TextStyle(color: AppColors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            CupertinoIcons.back,
            size: 25,
            color: AppColors.white,
          ),
        ),
      ),
      backgroundColor: AppColors.background,
      body: RefreshIndicator(
        onRefresh: () async {
          keys();
        },
        child: ListView.builder(
          itemCount: id.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      id: result
                          .firstWhere(
                            (element) => element.id == id.elementAt(index),
                          )
                          .id!,
                    ),
                  ),
                );
                setState(() {});
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
                          result
                              .firstWhere(
                                (element) => element.id == id.elementAt(index),
                              )
                              .mainPicture!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          " ${result.firstWhere(
                                (element) => element.id == id.elementAt(index),
                              ).name!}",
                          style: const TextStyle(
                              fontSize: 18, color: AppColors.white),
                        ),
                        detailed(
                          context,
                          all: result
                              .firstWhere(
                                (element) => element.id == id.elementAt(index),
                              )
                              .rate!,
                          path: "assets/icon/icon_star.svg",
                        ),
                        detailed(
                          context,
                          all: result
                              .firstWhere(
                                (element) => element.id == id.elementAt(index),
                              )
                              .year!
                              .year,
                          path: "assets/icon/icon_calendar.svg",
                        ),
                        detailed(
                          context,
                          all: "${result.firstWhere(
                                (element) => element.id == id.elementAt(index),
                              ).duration!.inMinutes} minutes",
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
