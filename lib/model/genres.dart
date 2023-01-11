class Genres {
 final int id;
  final String name;

  Genres({required this.id, required this.name});

  factory Genres.fromJson(Map<String, dynamic> json) => Genres(
    id: json['id'],
    name: json['name'],
  );
}
