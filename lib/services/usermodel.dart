class User {
  String status;
  String password;
  String uid;
  String userLevel;
  String profilePicture;
  String email;
  String name;
  String phoneNumber;

  User(
      {this.status,
      this.password,
      this.uid,
      this.userLevel,
      this.profilePicture,
      this.email,
      this.name,
      this.phoneNumber});

  User.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    password = json['password'];
    uid = json['uid'];
    userLevel = json['userLevel'];
    profilePicture = json['profilePicture'];
    email = json['email'];
    name = json['name'];
    phoneNumber = json['phoneNumber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['password'] = this.password;
    data['uid'] = this.uid;
    data['userLevel'] = this.userLevel;
    data['profilePicture'] = this.profilePicture;
    data['email'] = this.email;
    data['name'] = this.name;
    data['phoneNumber'] = this.phoneNumber;
    return data;
  }
}