import 'package:flutter/material.dart';
import '../../common/model/movie_model.dart';
import '../../common/style/app_colors.dart';
import '../detail_screen/detail_screen.dart';

class PopularDetail extends StatefulWidget {
  final List<MovieModel> topRated;
  final List<MovieModel> popular;
  const PopularDetail(
      {super.key, required this.topRated, required this.popular});

  @override
  State<PopularDetail> createState() => _PopularDetailState();
}

class _PopularDetailState extends State<PopularDetail>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool onTap = true;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          indicatorColor: AppColors.blue,
          indicatorWeight: 3,
          labelColor: AppColors.blue,
          unselectedLabelColor: AppColors.blue,
          tabs: const [
            Tab(text: "Top rated"),
            Tab(text: "Popular"),
          ],
          onTap: (value) =>
              setState(() => value == 0 ? onTap = true : onTap = false),
        ),
        const SizedBox(height: 15),
        Expanded(
          child: GridView.builder(
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1,
                crossAxisSpacing: 5,
                mainAxisSpacing: 10),
            itemCount: onTap ? widget.topRated.length : widget.popular.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                          id: onTap
                              ? widget.topRated[index].id!
                              : widget.popular[index].id!),
                    ),
                  );
                },
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        onTap
                            ? widget.topRated[index].mainPicture!
                            : widget.popular[index].mainPicture!,
                        height: 120,
                        width: 200,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
