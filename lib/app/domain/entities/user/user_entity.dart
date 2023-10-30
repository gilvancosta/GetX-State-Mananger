// ignore_for_file: public_member_api_docs, sort_constructors_first
class UserEntity {
  int id;
  String name;
  int age;

  UserEntity({
    required this.id,
    required this.name,
    required this.age,
  });

  UserEntity copyWith({
    int? id,
    String? name,
    int? age,
  }) {
    return UserEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }
}
