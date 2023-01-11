class Video {
  final String iso6391;
  final String iso31661;
  final String name;
  final String key;
  final String publishedAt;
  final String site;
  final int size;
  final String type;
  final bool official;
  final String id;

  Video(
      {required this.iso6391,
      required this.iso31661,
      required this.name,
      required this.key,
      required this.publishedAt,
      required this.site,
      required this.size,
      required this.type,
      required this.official,
      required this.id});

  factory Video.fromJson(Map<String, dynamic> json) => Video(
        iso6391: json['iso_639_1'],
        iso31661: json['iso_3166_1'],
        name: json['name'],
        key: json['key'],
        publishedAt: json['published_at'],
        site: json['site'],
        size: json['size'],
        type: json['type'],
        official: json['official'],
        id: json['id'],
      );
}
