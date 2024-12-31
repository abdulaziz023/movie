import '../model/movie_model.dart';

List<MovieModel> search({
  required String input,
  required List<MovieModel> database,
}) {
  String input2 = input.toLowerCase();
  return database
      .where((element) =>
          element.name!.toLowerCase().contains(input2) ||
          element.rate == num.tryParse(input2) ||
          element.year!.year == num.tryParse(input2) ||
          element.duration!.inMinutes == num.tryParse(input2) ||
          element.categories!
              .any((element) => element.toLowerCase().contains(input2)) ||
          element.description!.any(
            (element) => element.toLowerCase().contains(input2),
          ))
      .toList();
}
