/// id : "v1DShVTTFl4RN8vbl7Jt"
/// name : "Ayesha Azeema"
/// email : "ayesha.azeema@gmail.com"
/// password : "123456"
/// goal : "Menjadi orang yang berguna."

class UserModel {
  String? id;
  String? name;
  String? email;
  String? password;
  String? goal;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.password,
    this.goal,
  });

  UserModel.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    goal = json['goal'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['email'] = email;
    map['password'] = password;
    map['goal'] = goal;
    return map;
  }
}
