class Category{
  final String pathToIcon;
  final String title;

  Category({required this.pathToIcon, required this.title});
}

List<Category> categories = [
  Category(
    title: 'Dress',
    pathToIcon: 'assets/icons/dress.svg'
  ),
  Category(
    title: 'Pants',
    pathToIcon: 'assets/icons/pants.svg'
  ),
  Category(
    title: 'Shirt',
    pathToIcon: 'assets/icons/shirt.svg'
  ),
  Category(
    title: 'T-shirt',
    pathToIcon: 'assets/icons/Tshirt.svg'
  )
];