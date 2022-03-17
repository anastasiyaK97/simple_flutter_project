class Category {
  int id;
  String name;
  String? imageUrl;
  String? color;

  Category({
    required this.id,
    required this.name,
    this.imageUrl,
    this.color
  });
}
