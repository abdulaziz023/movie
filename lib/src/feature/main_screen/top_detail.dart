import 'package:flutter/material.dart';
import '../../common/model/movie_model.dart';
import '../../common/style/app_colors.dart';
import '../detail_screen/detail_screen.dart';

class TopDetail extends StatefulWidget {
  final List<MovieModel> database;
  const TopDetail({super.key, required this.database});

  @override
  State<TopDetail> createState() => _TopDetailState();
}

class _TopDetailState extends State<TopDetail> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: ListView.builder(
        itemCount: widget.database.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      DetailScreen(id: widget.database[index].id!),
                ),
              );
            },
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: SizedBox(
                      height: 250,
                      width: 150,
                      child: Image.asset(
                        widget.database[index].mainPicture!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 170,
                  child: Text(
                    "${index + 1}",
                    style: const TextStyle(
                      fontSize: 96,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: AppColors.blue,
                          offset: Offset(-2, -2),
                          blurRadius: 0,
                        ),
                        Shadow(
                          color: AppColors.blue,
                          offset: Offset(2, -2),
                          blurRadius: 0,
                        ),
                        Shadow(
                          color: AppColors.blue,
                          offset: Offset(-2, 2),
                          blurRadius: 0,
                        ),
                        Shadow(
                          color: AppColors.blue,
                          offset: Offset(2, 2),
                          blurRadius: 0,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
