part of 'models.dart';

class User extends Equatable {
  final int id;
  final String name;
  final String email;
  final String address;
  final String houseNumber;
  final String phoneNumber;
  final String city;
  final String picturePath;

  User(
      {this.id,
      this.name,
      this.email,
      this.address,
      this.houseNumber,
      this.phoneNumber,
      this.city,
      this.picturePath});

  @override
  List<Object> get props =>
      [id, name, email, address, houseNumber, phoneNumber, city, picturePath];
}

User mockUser = User(
    id: 1,
    name: 'Sultan',
    address: 'Jl. Bebas',
    city: 'Medan',
    houseNumber: '1234',
    phoneNumber: '123456',
    email: 'bebas@bebas.com',
    picturePath:
        "https://i1.wp.com/resepkoki.id/wp-content/uploads/2018/03/sayur-mayur-Cropped-1.jpg?fit=800%2C800&ssl=1");
