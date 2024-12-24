import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/src/common/model/movie_model.dart';

import '../../common/database/data_base.dart';
import '../../common/style/app_colors.dart';

class DetailScreen extends StatefulWidget {
  final int id;
  const DetailScreen({super.key, required this.id});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _onTap = true;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 3,
      vsync: this,
    );
  }

  List<MovieModel> model() {
    final id =
        DataBase().all.firstWhere((element) => element.id == widget.id).id;
    final name =
        DataBase().all.firstWhere((element) => element.id == widget.id).name;
    final mainPicture = DataBase()
        .all
        .firstWhere((element) => element.id == widget.id)
        .mainPicture;
    final detailPicture = DataBase()
        .all
        .firstWhere((element) => element.id == widget.id)
        .detailPicture;
    final rate =
        DataBase().all.firstWhere((element) => element.id == widget.id).rate;
    final year =
        DataBase().all.firstWhere((element) => element.id == widget.id).year;
    final duration = DataBase()
        .all
        .firstWhere((element) => element.id == widget.id)
        .duration;
    final categories = DataBase()
        .all
        .firstWhere((element) => element.id == widget.id)
        .categories;
    final description = DataBase()
        .all
        .firstWhere((element) => element.id == widget.id)
        .description;

    return [
      MovieModel(
        id: id,
        name: name,
        mainPicture: mainPicture,
        detailPicture: detailPicture,
        rate: rate,
        year: year,
        duration: duration,
        categories: categories,
        description: description,
      ),
    ];
  }

  String remome(String list) {
    return list.toString().replaceFirst("[", "").replaceFirst("]", "");
  }

  @override
  Widget build(BuildContext context) {
    final database = model();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.background,
        title: const Text(
          "Detail",
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
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              "assets/icon/icon_bookmark.svg",
              colorFilter: const ColorFilter.mode(
                AppColors.white,
                BlendMode.srcIn,
              ),
            ),
          )
        ],
      ),
      backgroundColor: AppColors.background,
      body: ListView(
        children: [
          SizedBox(
            height: 330,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                  child: SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: Image.asset(
                      database[0].detailPicture!,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Align(
                  alignment: const Alignment(0.1, 0.6),
                  child: SizedBox(
                    height: 150,
                    width: 350,
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(database[0].mainPicture!),
                        ),
                        Text(
                          "\n  ${database[0].name}",
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              color: AppColors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icon/icon_calendar.svg",
                    color: AppColors.darkGrey,
                    height: 20,
                  ),
                  Text(
                    " ${database[0].year!.year}",
                    style: const TextStyle(color: AppColors.darkGrey),
                  )
                ],
              ),
              const Text(
                "|",
                style: TextStyle(color: AppColors.darkGrey),
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icon/icon_clock.svg",
                    color: AppColors.darkGrey,
                    height: 20,
                  ),
                  Text(
                    " ${database[0].duration!.inMinutes}-minutes",
                    style: const TextStyle(color: AppColors.darkGrey),
                  )
                ],
              ),
              const Text(
                "|",
                style: TextStyle(color: AppColors.darkGrey),
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icon/icon_ticket.svg",
                    color: AppColors.darkGrey,
                    height: 20,
                  ),
                  Text(
                    " ${database[0].categories!.first}",
                    style: const TextStyle(color: AppColors.darkGrey),
                  )
                ],
              ),
            ],
          ),
          TabBar(
            controller: _tabController,
            indicatorColor: AppColors.blue,
            indicatorWeight: 3,
            labelColor: AppColors.blue,
            unselectedLabelColor: AppColors.blue,
            tabs: const [
              Tab(text: "About Movie"),
              Tab(text: "Reviews"),
              Tab(text: "Cast"),
            ],
            onTap: (value) =>
                setState(() => value == 0 ? _onTap = true : _onTap = false),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              _onTap ? "\n${remome(database[0].description.toString())}" : "",
              style: const TextStyle(color: AppColors.white, fontSize: 14.5),
            ),
          ),
        ],
      ),
    );
  }
}