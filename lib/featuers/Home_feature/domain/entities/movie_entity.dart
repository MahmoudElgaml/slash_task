class MovieEntity {
  String? title;
  String? smallImage;
  String? largeImage;
  String? summary;
  num? averageRate;
  String? date;
  List<String?>? genre;

  MovieEntity({
    this.title,
    this.smallImage,
    this.largeImage,
    this.summary,
    this.averageRate,
    this.date,
    this.genre,
  });
}
