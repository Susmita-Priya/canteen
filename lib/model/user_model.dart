class UserModel {
  String? uid;
  String? id;
  String? email;
  String? name;
  String? phn;

  UserModel({this.uid, this.id, this.email, this.name, this.phn});

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      id: map['id'],
      email: map['email'],
      name: map['name'],
      phn: map['phn'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'id': id,
      'email': email,
      'name': name,
      'phn': phn,
    };
  }
}
