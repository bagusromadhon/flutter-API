class Blog {
  final String coment;
  final String id;
  final String title;

  const Blog({
    required this.coment,
    required this.id,
    required this.title,
  });

  factory Blog.fromJson(Map<String, dynamic> json) {
    return Blog(
      coment: json['coment'],
      id: json['id'],
      title: json['title'],
    );
  }
}