class CoursesModel {
  int id;
  String name;
  String image;

  CoursesModel({
    required this.id,
    required this.name,
    required this.image,
  });
}

List<CoursesModel> courseslist = [
  CoursesModel(id: 1, name: 'LET START TRADING COURSE', image: 'binary.png'),
  CoursesModel(id: 1, name: 'FIVERR', image: 'fiverr.png'),
  CoursesModel(id: 1, name: 'WEBSITE DEVELOPMENT', image: 'wordpress.png'),
  CoursesModel(id: 1, name: 'SEO COURSE', image: 'seo.png'),
  CoursesModel(id: 1, name: 'EBAY DROPSHIPPING', image: 'ebay.png'),
];
