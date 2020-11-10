part of 'models.dart';

class Food extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;

  Food(
      {this.id,
      this.picturePath,
      this.name,
      this.description,
      this.ingredients,
      this.price,
      this.rate});

  @override
  // TODO: implement props
  List<Object> get props =>
      [id, picturePath, name, description, ingredients, price, rate];
}

List<Food> mockFoods = [
  Food(
      id: 1,
      picturePath:
          "https://i1.wp.com/resepkoki.id/wp-content/uploads/2018/03/sayur-mayur-Cropped-1.jpg?fit=800%2C800&ssl=1",
      name: "Safe Sayur Sultan",
      description: "Sayur Mayur",
      ingredients: 'Bebas aja',
      price: 150000,
      rate: 4.2),
  Food(
      id: 2,
      picturePath:
          "https://i1.wp.com/resepkoki.id/wp-content/uploads/2018/03/sayur-mayur-Cropped-1.jpg?fit=800%2C800&ssl=1",
      name: "Safe Sayur Mael",
      description: "Sayur Mael",
      ingredients: 'Bebas Kali pun',
      price: 130000,
      rate: 3),
  Food(
      id: 3,
      picturePath:
          "https://i1.wp.com/resepkoki.id/wp-content/uploads/2018/03/sayur-mayur-Cropped-1.jpg?fit=800%2C800&ssl=1",
      name: "Safe Sayur Raja",
      description: "Sayur Mantap",
      ingredients: 'Hahahaha',
      price: 100000,
      rate: 5)
];
