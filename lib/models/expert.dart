import 'package:test_45/models/department.dart';

class Expert {
  final String rate;
  final bool favorite;
  final String name;
  final Department department;
  final bool online;
  final String image;

  Expert({
    required this.rate,
    required this.favorite,
    required this.name,
    required this.department,
    required this.online,
    required this.image,
  });
}

List<Expert> experts = [
  Expert(
    rate: '5.0',
    favorite: false,
    name: 'Kareem Adel',
    department: Department.supply,
    online: true,
    image: 'assets/images/karim_photo.png',
  ),
  Expert(
    rate: '4.9',
    favorite: false,
    name: 'Merna Adel',
    department: Department.supply,
    online: true,
    image: 'assets/images/merna_photo.png',
  ),
];
