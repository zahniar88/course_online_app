class Course {
  final String image, price, title;
  final int rating, countRating;

  Course({
    required this.image,
    required this.price,
    required this.title,
    required this.rating,
    required this.countRating,
  });
}

List<Course> course = [
  Course(
    image: "assets/images/course1.png",
    price: "Free",
    title: "UI Design : Wireframe to Visual Design",
    rating: 5,
    countRating: 4016,
  ),
  Course(
    image: "assets/images/course2.png",
    price: "Free",
    title: "UI Design : Styleguide with Figma",
    rating: 5,
    countRating: 1055,
  ),
];
