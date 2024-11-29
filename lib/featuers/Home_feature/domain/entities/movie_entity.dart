class MovieEntity {
  String? title;
  String? smallImage;
  String? largeImage;
  String? summary;
  num? averageRate;
  num? runTime;
  String? date;
  String? url;
  List<String?>? genre;

  MovieEntity({
    this.title,
    this.smallImage,
    this.largeImage,
    this.summary,
    this.averageRate,
    this.runTime,
    this.url,
    this.date,
    this.genre,
  });
}
