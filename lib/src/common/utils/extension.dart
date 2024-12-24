import 'package:movie_app/src/common/model/movie_model.dart';

extension on String {
  String sort(List<MovieModel> other) {
    Set set = Set();
    for (final item in other) {
      set.add(item.categories);
    }
    return set.toString();
  }
}
