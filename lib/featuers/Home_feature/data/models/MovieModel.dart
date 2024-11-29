class MovieModel {
  MovieModel({
    this.score,
    this.show,
  });

  MovieModel.fromJson(dynamic json) {
    score = json['score'];
    show = json['show'] != null ? Show.fromJson(json['show']) : null;
  }

  num? score;
  Show? show;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['score'] = score;
    if (show != null) {
      map['show'] = show?.toJson();
    }
    return map;
  }
}

class Show {
  Show({
    this.id,
    this.url,
    this.name,
    this.type,
    this.language,
    this.genres,
    this.status,
    this.runtime,
    this.averageRuntime,
    this.premiered,
    this.ended,
    this.officialSite,
    this.schedule,
    this.rating,
    this.weight,
    this.network,
    this.webChannel,
    this.dvdCountry,
    this.externals,
    this.image,
    this.summary,
    this.updated,
    this.links,
  });

  Show.fromJson(dynamic json) {
    id = json['id'];
    url = json['url'];
    name = json['name'];
    type = json['type'];
    language = json['language'];
    genres = json['genres'] != null ? json['genres'].cast<String>() : [];
    status = json['status'];
    runtime = json['runtime'];
    averageRuntime = json['averageRuntime'];
    premiered = json['premiered'];
    ended = json['ended'];
    officialSite = json['officialSite'];
    schedule =
        json['schedule'] != null ? Schedule.fromJson(json['schedule']) : null;
    rating = json['rating'] != null ? Rating.fromJson(json['rating']) : null;
    weight = json['weight'];
    network =
        json['network'] != null ? Network.fromJson(json['network']) : null;
    webChannel = json['webChannel'];
    dvdCountry = json['dvdCountry'];
    externals = json['externals'] != null
        ? Externals.fromJson(json['externals'])
        : null;
    image = json['image'] != null ? Image.fromJson(json['image']) : null;
    summary = json['summary'];
    updated = json['updated'];
    links = json['_links'] != null ? Links.fromJson(json['_links']) : null;
  }

  num? id;
  String? url;
  String? name;
  String? type;
  String? language;
  List<String>? genres;
  String? status;
  num? runtime;
  num? averageRuntime;
  String? premiered;
  dynamic ended;
  String? officialSite;
  Schedule? schedule;
  Rating? rating;
  num? weight;
  Network? network;
  dynamic webChannel;
  dynamic dvdCountry;
  Externals? externals;
  Image? image;
  String? summary;
  num? updated;
  Links? links;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['url'] = url;
    map['name'] = name;
    map['type'] = type;
    map['language'] = language;
    map['genres'] = genres;
    map['status'] = status;
    map['runtime'] = runtime;
    map['averageRuntime'] = averageRuntime;
    map['premiered'] = premiered;
    map['ended'] = ended;
    map['officialSite'] = officialSite;
    if (schedule != null) {
      map['schedule'] = schedule?.toJson();
    }
    if (rating != null) {
      map['rating'] = rating?.toJson();
    }
    map['weight'] = weight;
    if (network != null) {
      map['network'] = network?.toJson();
    }
    map['webChannel'] = webChannel;
    map['dvdCountry'] = dvdCountry;
    if (externals != null) {
      map['externals'] = externals?.toJson();
    }
    if (image != null) {
      map['image'] = image?.toJson();
    }
    map['summary'] = summary;
    map['updated'] = updated;
    if (links != null) {
      map['_links'] = links?.toJson();
    }
    return map;
  }
}

class Links {
  Links({
    this.self,
    this.previousepisode,
    this.nextepisode,
  });

  Links.fromJson(dynamic json) {
    self = json['self'] != null ? Self.fromJson(json['self']) : null;
    previousepisode = json['previousepisode'] != null
        ? Previousepisode.fromJson(json['previousepisode'])
        : null;
    nextepisode = json['nextepisode'] != null
        ? Nextepisode.fromJson(json['nextepisode'])
        : null;
  }

  Self? self;
  Previousepisode? previousepisode;
  Nextepisode? nextepisode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (self != null) {
      map['self'] = self?.toJson();
    }
    if (previousepisode != null) {
      map['previousepisode'] = previousepisode?.toJson();
    }
    if (nextepisode != null) {
      map['nextepisode'] = nextepisode?.toJson();
    }
    return map;
  }
}

class Nextepisode {
  Nextepisode({
    this.href,
    this.name,
  });

  Nextepisode.fromJson(dynamic json) {
    href = json['href'];
    name = json['name'];
  }

  String? href;
  String? name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['href'] = href;
    map['name'] = name;
    return map;
  }
}

class Previousepisode {
  Previousepisode({
    this.href,
    this.name,
  });

  Previousepisode.fromJson(dynamic json) {
    href = json['href'];
    name = json['name'];
  }

  String? href;
  String? name;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['href'] = href;
    map['name'] = name;
    return map;
  }
}

class Self {
  Self({
    this.href,
  });

  Self.fromJson(dynamic json) {
    href = json['href'];
  }

  String? href;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['href'] = href;
    return map;
  }
}

class Image {
  Image({
    this.medium,
    this.original,
  });

  Image.fromJson(dynamic json) {
    medium = json['medium'];
    original = json['original'];
  }

  String? medium;
  String? original;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['medium'] = medium;
    map['original'] = original;
    return map;
  }
}

class Externals {
  Externals({
    this.tvrage,
    this.thetvdb,
    this.imdb,
  });

  Externals.fromJson(dynamic json) {
    tvrage = json['tvrage'];
    thetvdb = json['thetvdb'];
    imdb = json['imdb'];
  }

  dynamic tvrage;
  num? thetvdb;
  String? imdb;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['tvrage'] = tvrage;
    map['thetvdb'] = thetvdb;
    map['imdb'] = imdb;
    return map;
  }
}

class Network {
  Network({
    this.id,
    this.name,
    this.country,
    this.officialSite,
  });

  Network.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    country =
        json['country'] != null ? Country.fromJson(json['country']) : null;
    officialSite = json['officialSite'];
  }

  num? id;
  String? name;
  Country? country;
  String? officialSite;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    if (country != null) {
      map['country'] = country?.toJson();
    }
    map['officialSite'] = officialSite;
    return map;
  }
}

class Country {
  Country({
    this.name,
    this.code,
    this.timezone,
  });

  Country.fromJson(dynamic json) {
    name = json['name'];
    code = json['code'];
    timezone = json['timezone'];
  }

  String? name;
  String? code;
  String? timezone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['code'] = code;
    map['timezone'] = timezone;
    return map;
  }
}

class Rating {
  Rating({
    this.average,
  });

  Rating.fromJson(dynamic json) {
    average = json['average'];
  }

  num? average;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['average'] = average;
    return map;
  }
}

class Schedule {
  Schedule({
    this.time,
    this.days,
  });

  Schedule.fromJson(dynamic json) {
    time = json['time'];
    days = json['days'] != null ? json['days'].cast<String>() : [];
  }

  String? time;
  List<String>? days;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time'] = time;
    map['days'] = days;
    return map;
  }
}
