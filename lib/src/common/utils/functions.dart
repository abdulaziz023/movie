import '../model/movie_model.dart';

List<MovieModel> search({
  required String input,
  required List<MovieModel> database,
}) {
  return database
      .where((element) =>
          element.name!.contains(input) ||
          element.rate == num.tryParse(input) ||
          element.year!.year == num.tryParse(input) ||
          element.duration!.inMinutes == num.tryParse(input) ||
          element.categories!.any((element) => element.contains(input)) ||
          element.description!.any(
            (element) => element.contains(input),
          ))
      .toList();
}
