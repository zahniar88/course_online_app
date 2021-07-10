class Article {
  final String image, title, category;
  final bool favorite;

  Article({
    required this.image,
    required this.title,
    required this.category,
    required this.favorite,
  });
}

List<Article> articles = [
  Article(
    image: "assets/images/article1.png",
    title: "How to: Work faster as Full Stack Designer",
    category: "UI Design",
    favorite: true,
  ),
  Article(
    image: "assets/images/article2.png",
    title: "How to: Digital Art from Sketch",
    category: "Art Course",
    favorite: false,
  ),
];
