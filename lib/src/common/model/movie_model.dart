class MovieModel {
  int? id;
  String? name;
  String? mainPicture;
  String? detailPicture;
  double? rate;
  DateTime? year;
  Duration? duration;
  List<String>? categories;
  List<String>? description;

  MovieModel({
    required this.id,
    required this.name,
    required this.mainPicture,
    required this.detailPicture,
    required this.rate,
    required this.year,
    required this.duration,
    required this.categories,
    required this.description,
  });

  factory MovieModel.fromJson(Map<String, Object?> json) {
    return MovieModel(
      id: json["id"] as int?,
      name: json["name"] as String?,
      mainPicture: json["mainPicture"] as String?,
      detailPicture: json["detailPicture"] as String?,
      rate: json["rate"] as double?,
      year: json["year"] as DateTime?,
      duration: json["duration"] as Duration?,
      categories: json["categories"] as List<String>?,
      description: json["description"] as List<String>?,
    );
  }
  Map<String, Object?> toJson() {
    return {
      "id": id,
      "name": name,
      "mainPicture": mainPicture,
      "detailPicture": detailPicture,
      "rate": rate,
      "year": year,
      "duration": duration,
      "categories": categories,
      "description": description,
    };
  }

  @override
  String toString() {
    return 'MovieModel(id: $id, name: $name, mainPicture: $mainPicture, detailPicture: $detailPicture rate: $rate, '
        'year: ${year?.toIso8601String()}, duration: ${duration?.inSeconds} seconds, '
        'categories: $categories, description: $description)';
  }
}
