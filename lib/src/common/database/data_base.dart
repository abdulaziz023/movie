import '../model/movie_model.dart';

class DataBase {
  static List<MovieModel> movies = [
    MovieModel(
      id: 1,
      name: 'Spider Man No Way Home',
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

    //Tugrlen
    MovieModel(
      id: 7,
      name: 'Aquaman',
      mainPicture: 'assets/detail_image/aquaman_detail.png',
      detailPicture: "assets/main_image/aquaman.jpg",
      rate: 3.3,
      year: DateTime(2023),
      duration: const Duration(minutes: 153),
      categories: ["Action", "Fantasy", "Sci-Fi"],
      description: [
        "As Arthur Curry confronts the responsibilities of being King of the Seven Seas, a long-buried ancient power is unleashed. After witnessing the full effect of these dark forces, Aquaman must forge an uneasy alliance with an old enemy, and embark on a treacherous journey to protect his family, his kingdom, and the world from irreversible devastation."
      ],
    ),
    // 2
    MovieModel(
      id: 8,
      name: 'Blue Beetle',
      mainPicture: 'assets/detail_image/blue_beetle_detail.png',
      detailPicture: "assets/main_image/blue_beetle.jpg",
      rate: 7.7,
      year: DateTime(2023),
      duration: const Duration(minutes: 153),
      categories: ["Action", "Sci-Fi"],
      description: [
        "Recent college grad Jaime Reyes returns home full of aspirations for his future, only to find that home is not quite as he left it. As he searches to find his purpose in the world, fate intervenes when Jaime unexpectedly finds himself in possession of an ancient relic of alien biotechnology: the Scarab. When the Scarab suddenly chooses Jaime to be its symbiotic host, he is bestowed with an incredible suit of armor capable of extraordinary and unpredictable powers, forever changing his destiny as he becomes the Super Hero Blue Beetle."
      ],
    ),
    // 3
    MovieModel(
      id: 9,
      name: 'Flash',
      mainPicture: 'assets/detail_image/flash_detail.png',
      detailPicture: "assets/main_image/flash.jpg",
      rate: 6.3,
      year: DateTime(2023),
      duration: const Duration(minutes: 144),
      categories: ["Action", "Fantasy", "Sci-Fi"],
      description: [
        "Ezra Miller stars as Barry Allen, AKA The Flash, who pushes the limits of his superpowers in the DC Super Hero’s first‐ever standalone feature film"
      ],
    ),
    // 4
    MovieModel(
      id: 10,
      name: 'Harry Potter',
      mainPicture: 'assets/detail_image/harrypotter_2_detail.png',
      detailPicture: "assets/main_image/harrypotter_2.jpg",
      rate: 8.2,
      year: DateTime(2002),
      duration: const Duration(minutes: 161),
      categories: ["Family", "Fantasy"],
      description: [
        "After a long summer with the horrid Dursleys, Harry Potter is thwarted in his attempts to board the train to Hogwarts School of Witchcraft and Wizardry to begin his second year."
      ],
    ),
    // 5
    MovieModel(
      id: 11,
      name: 'Hulk',
      mainPicture: 'assets/detail_image/hulk_1_detail.png',
      detailPicture: "assets/main_image/hulk_1.jpg",
      rate: 6.8,
      year: DateTime(2008),
      duration: const Duration(minutes: 112),
      categories: ["Sci-Fi", "Action"],
      description: [
        "Scientist Bruce Banner lives in the shadows, cut off from the woman he loves and scouring the planet for an antidote to the unbridled force of rage within him. When the military masterminds who dream of exploiting his powers force him back to civilization, he finds himself face-to-face with his most formidable foe: the Abomination—a nightmarish beast of pure aggression whose powers match the Hulk's own"
      ],
    ),
    MovieModel(
      id: 13,
      name: 'Shazam 2',
      mainPicture: 'assets/detail_image/shazam_detail.png',
      detailPicture: "assets/main_image/shazam.jpg",
      rate: 4.9,
      year: DateTime(2023),
      duration: const Duration(minutes: 130),
      categories: ["Action", "Fantasy", "Comedy"],
      description: [
        "From New Line Cinema comes Shazam! Fury of the Gods, which continues the story of teenage Billy Batson who, upon reciting the magic word “SHAZAM!,”"
      ],
    ),
    // 8
    MovieModel(
      id: 14,
      name: 'Alita',
      mainPicture: 'assets/detail_image/alita_detail.png',
      detailPicture: "assets/main_image/alita.jpg",
      rate: 6.1,
      year: DateTime(2019),
      duration: const Duration(minutes: 122),
      categories: ["Action", "Sci-Fi"],
      description: [
        "PRICING SUBJECT TO CHANGE. Confirm current pricing with applicable retailer. All transactions subject to applicable license terms and conditions."
      ],
    ),
    // 9
    MovieModel(
      id: 15,
      name: 'Avengers',
      mainPicture: 'assets/detail_image/avengers_detail.png',
      detailPicture: "assets/main_image/avengers.jpg",
      rate: 9.4,
      year: DateTime(2019),
      duration: const Duration(minutes: 181),
      categories: ["Action", "Sci-Fi", "Fabtasy"],
      description: [
        "The fourth installment in the Avengers saga is the culmination of 22 interconnected Marvel films and the climax of an epic journey. The world's greatest heroes will finally understand just how fragile our reality is--and the sacrifices that must be made to uphold it--in a story of friendship, teamwork and setting aside differences to overcome an impossible obstacle."
      ],
    ),
// 10
    MovieModel(
      id: 16,
      name: 'Batman',
      mainPicture: "assets/detail_image/batman_detail.png",
      detailPicture: 'assets/main_image/batman.jpg',
      rate: 5.3,
      year: DateTime(2022),
      duration: const Duration(minutes: 176),
      categories: ["Action", "Drama"],
      description: [
        "Two years of stalking the streets as the Batman, striking fear into the hearts of criminals, has led Bruce Wayne deep into the shadows of Gotham City. With only a few trusted allies amongst the city’s corrupt network of officials and high‐profile figures, the lone vigilante has established himself as the sole embodiment of vengeance amongst his fellow citizens. "
      ],
    ),
// 11
    MovieModel(
      id: 17,
      name: 'Bloodshot',
      mainPicture: 'assets/detail_image/bloodshot_detail.png',
      detailPicture: "assets/main_image/bloodshot.jpg",
      rate: 3.2,
      year: DateTime(2020),
      duration: const Duration(minutes: 189),
      categories: ["Action", "Sc-Fi", "Drama"],
      description: [
        "Ray Garrison, a slain soldier, is re-animated with superpowers."
      ],
    ),
    MovieModel(
      id: 18,
      name: 'Morbius',
      mainPicture: 'assets/detail_image/morbius_detail.png',
      detailPicture: "assets/main_image/morbius.jpg",
      rate: 1.5,
      year: DateTime(2022),
      duration: const Duration(minutes: 153),
      categories: ["Sci-Fi", "Action", "Horror"],
      description: [
        "One of Marvel's most compelling and conflicted characters comes to the big screen as Oscar® winner Jared Leto transforms into the enigmatic antihero, Michael Morbius. Dangerously ill with a rare blood disorder, and determined to save others suffering his same fate, Dr. Morbius attempts a desperate gamble. What at first appears to be a radical success, a darkness inside him is unleashed and transforms this healer into a hunter."
      ],
    ),
    MovieModel(
      id: 19,
      name: 'Quantomiya',
      mainPicture: 'assets/detail_image/quantomiya_ari.png',
      detailPicture: "assets/main_image/quantomiya_ari.jpg",
      rate: 4.6,
      year: DateTime(2023),
      duration: const Duration(minutes: 125),
      categories: ["Action", "Sci-Fi"],
      description: [
        "Scott Lang (Paul Rudd) and Hope van Dyne (Evangeline Lilly) return to continue their adventures as Ant-Man and The Wasp. Together with Hope’s parents Hank Pym (Michael Douglas) and Janet van Dyne (Michelle Pfeiffer), as well as Scott’s daughter Cassie Lang (Kathryn Newton), the duo finds themselves exploring the Quantum Realm,"
      ],
    ),
// 14
    MovieModel(
      id: 20,
      name: 'Shang-chi',
      mainPicture: 'assets/detail_image/shangchi_detail.png',
      detailPicture: "assets/main_image/shangchi.jpg",
      rate: 9.2,
      year: DateTime(2021),
      duration: const Duration(minutes: 132),
      categories: ["Action", "Drama"],
      description: [
        "Marvel Studios’ SHANG-CHI AND THE LEGEND OF THE TEN RINGS stars Simu Liu as Shang-Chi, who must face the past he thought he left behind and confront his father, leader of the dangerous Ten Rings organization."
      ],
    ),
// 15
    MovieModel(
      id: 21,
      name: 'Wakanda',
      mainPicture: 'assets/detail_image/wakanda_detail.png',
      detailPicture: "assets/main_image/wakanda.jpg",
      rate: 9.6,
      year: DateTime(2018),
      duration: const Duration(minutes: 134),
      categories: ["Sci-Fi", "Action", "Drama"],
      description: [
        "After the death of his father, the king of Wakanda, young T'Challa returns home to the isolated high-tech African nation to succeed to the throne and take his rightful place as king"
      ],
    ),
  ];

  static List<MovieModel> topRated = [
    for (final item in movies)
      if (item.rate! > 6) item
  ];
  static List<MovieModel> popular = [
    for (final item in movies)
      if (item.categories!.contains("Action") ||
          item.categories!.contains("Thriller"))
        item
  ];
  List<MovieModel> all = movies;
}
