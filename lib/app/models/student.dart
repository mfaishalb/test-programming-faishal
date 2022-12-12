class Student {
  Student({
    required this.id,
    required this.name,
    required this.gender,
    required this.birthDate,
    required this.province,
    required this.city,
    required this.photo,
    this.createdAt,
    this.updatedAt,
  });

  String id = "";
  String name = "";
  String gender = "";
  DateTime? birthDate;
  String province = "";
  String city = "";
  String photo = "";
  DateTime? createdAt;
  DateTime? updatedAt;

  factory Student.fromJson(Map<String, dynamic> json) => Student(
        id: json["_id"],
        name: json["name"],
        gender: json["gender"],
        birthDate: DateTime.parse(json["birthDate"]),
        province: json["province"],
        city: json["city"],
        photo: json["photo"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "gender": gender,
        "birthDate": birthDate!.toIso8601String(),
        "province": province,
        "city": city,
        "photo": photo,
        "createdAt": createdAt!.toIso8601String(),
        "updatedAt": updatedAt!.toIso8601String(),
      };
}
