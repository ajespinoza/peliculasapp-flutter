class Peliculas {
  List<Pelicula> items = [];

  Peliculas();

  Peliculas.fromJsonList(List<dynamic>? jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final pelicula = new Pelicula.fromJsonMap(item);
      items.add(pelicula);
    }
  }
}

class Pelicula {
  int? id;
  bool? video;
  int? voteCount;
  double? voteAverage;
  String? title;
  double? popularity;
  String? releaseDate;
  String? originalLanguage;
  String? originalTitle;
  List<int>? genreIds;
  String? backdropPath;
  bool? adult;
  String? overview;
  String? posterPath;

  Pelicula({
    this.id,
    this.video,
    this.voteCount,
    this.voteAverage,
    this.title,
    this.popularity,
    this.releaseDate,
    this.originalLanguage,
    this.originalTitle,
    this.genreIds,
    this.backdropPath,
    this.adult,
    this.overview,
    this.posterPath,
  });

  Pelicula.fromJsonMap(Map<String, dynamic> json) {
    id = json['id'];
    video = json['video'];
    voteCount = json['vote_count'];
    voteAverage = json['vote_average'] / 1;
    title = json['title'];
    popularity = json['popularity'] / 1;
    releaseDate = json['release_date'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    genreIds = json['genre_ids'].cast<int>();
    backdropPath = json['backdrop_path'];
    adult = json['adult'];
    overview = json['overview'];
    posterPath = json['poster_path'];
  }
  get uniqueId {
    return '$id-tarjeta';
  }

  get uniqueIdBanner {
    return '$id-banner';
  }

  getPosterImg() {
    if (posterPath == null) {
      return 'https://semantic-ui.com/images/wireframe/image.png';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$posterPath';
    }
  }

  getBackgroundImg() {
    if (posterPath == null) {
      return 'https://semantic-ui.com/images/wireframe/image.png';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$backdropPath';
    }
  }
}
