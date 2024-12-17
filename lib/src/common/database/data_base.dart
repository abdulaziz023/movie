import '../model/movie_model.dart';

class DataBase {
  static List<MovieModel> movies = [
    MovieModel(
      id: 1,
      name: 'Spider man',
      mainPicture: 'assets/main_image/spider.png',
      detailPicture: 'assets/detail_image/spider_detail.jpg',
      rate: 9.6,
      year: DateTime(2021),
      duration: const Duration(minutes: 148),
      categories: ["Action", "Fantastic"],
      description: [
        "From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government, undertaking high-risk black ops missions in exchange for commuted prison sentences.",
        "Spider Man Movie Fantastic and Action Popular Movie"
      ],
    ),
    MovieModel(
      id: 2,
      name: 'Joror',
      mainPicture: 'assets/main_image/joror.png',
      detailPicture: 'assets/detail_image/joror_detail.jpg',
      rate: 9.4,
      year: DateTime(2024),
      duration: const Duration(minutes: 114),
      categories: ["Drama", "Thriller"],
      description: [
        "“Juror #2” follows family man Justin Kemp (Hoult) who, while serving as a juror in a high-profile murder trial, finds himself struggling with a serious moral dilemma…one he could use to sway the jury verdict and potentially convict—or free—the accused killer."
      ],
    ),
    MovieModel(
      id: 3,
      name: 'Venom',
      mainPicture: 'assets/main_image/venom.png',
      detailPicture: 'assets/detail_image/venom_detail.jpg',
      rate: 4.1,
      year: DateTime(2024),
      duration: const Duration(minutes: 109),
      categories: ["Action", "Thriller", "Sci-Fi"],
      description: [
        "In Venom: The Last Dance, Tom Hardy returns as Venom, one of Marvel's greatest and most complex characters, for the final film in the trilogy. Eddie and Venom are on the run. Hunted by both of their worlds and with the net closing in, the duo are forced into a devastating decision that will bring the curtains down on Venom and Eddie's last dance.Venom: The Last Dance stars Tom Hardy, Chiwetel Ejiofor, Juno Temple, Rhys Ifans, Peggy Lu, Alanna Ubach and Stephen Graham. The film is directed by Kelly Marcel from a screenplay she wrote, based on a story by Hardy and Marcel. The film is produced by Avi Arad, Matt Tolmach, Amy Pascal, Kelly Marcel, Tom Hardy and Hutch Parker."
      ],
    ),
    MovieModel(
      id: 4,
      name: 'Absolution',
      mainPicture: 'assets/main_image/absolution.png',
      detailPicture: 'assets/detail_image/absolution_detail.jpg',
      rate: 5.3,
      year: DateTime(2024),
      duration: const Duration(minutes: 112),
      categories: ["Action", "Thriller", "Sci-Fi"],
      description: [
        "An aging ex-boxer (Liam Neeson) working as muscle for a Boston crime boss (Ron Perlman) receives an upsetting diagnosis. Despite a faltering memory, he attempts to rectify the sins of his past and reconnect with his estranged children. He is determined to leave a positive legacy for his grandson, but the criminal underworld isn't done with him and won't loosen their grip willingly."
      ],
    ),
    MovieModel(
      id: 5,
      name: 'Ford vs Ferrari',
      mainPicture: 'assets/main_image/ford_ferrari.png',
      detailPicture: 'assets/detail_image/ford_ferrari_detail.jpg',
      rate: 5.3,
      year: DateTime(2024),
      duration: const Duration(minutes: 153),
      categories: ["Action", "Drama"],
      description: [
        "Academy Award® Winners Matt Damon and Christian Bale star in FORD v FERRARI, based on the true story of visionary American car designer Carroll Shelby (Damon) and fearless British-born driver Ken Miles (Bale), who together build a revolutionary race car for Ford Motor Company and take on the dominating race cars of Enzo Ferrari at the 24 Hours of Le Mans in France in 1966."
      ],
    ),
    MovieModel(
      id: 6,
      name: 'Deadpool & Wolverine',
      mainPicture: 'assets/main_image/deadpol_wolverine.png',
      detailPicture: 'assets/detail_image/deadpol_wolverine_detail.jpg',
      rate: 7.8,
      year: DateTime(2024),
      duration: const Duration(minutes: 128),
      categories: ["Action", "Comedy"],
      description: [
        "Marvel Studios presents their most significant mistake to date – “Deadpool & Wolverine.” A listless Wade Wilson toils away in civilian life. His days as the morally flexible mercenary, Deadpool, behind him. When his homeworld faces an existential threat, Wade must reluctantly suit up again with an even more reluctantlier… reluctanter? Reluctantest? He must convince a reluctant Wolverine to… oh hell, just watch the movie. Synopses are so stupid. But heed this… Warning: Some flashing-lights scenes in this film may affect photosensitive viewers."
      ],
    ),
  ];

  static List<MovieModel> topRated = [];
  static List<MovieModel> popular = [];
}

void main() {}
