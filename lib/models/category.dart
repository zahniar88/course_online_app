class Category {
  final String icon, title;
  final int count;

  Category({
    required this.icon,
    required this.title,
    required this.count,
  });
}

List<Category> categories = [
  Category(
    icon: "assets/icons/icon1.png",
    title: "Design",
    count: 49,
  ),
  Category(
    icon: "assets/icons/icon2.png",
    title: "Soft Skill",
    count: 12,
  ),
  Category(
    icon: "assets/icons/icon3.png",
    title: "Art",
    count: 50,
  ),
];
