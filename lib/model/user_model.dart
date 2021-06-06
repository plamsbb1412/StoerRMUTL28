class UserModel {
  String id;
  String name;
  String username;
  String password;
  String gender;
  String phoneNumber;
  String email;
  String chooseType;
  String nameStore;
  String coupon;
  String profile;
  String token;

  UserModel(
      {this.id,
      this.name,
      this.username,
      this.password,
      this.gender,
      this.phoneNumber,
      this.email,
      this.chooseType,
      this.nameStore,
      this.coupon,
      this.profile,
      this.token});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    username = json['username'];
    password = json['password'];
    gender = json['gender'];
    phoneNumber = json['phone_number'];
    email = json['email'];
    chooseType = json['chooseType'];
    nameStore = json['name_store'];
    coupon = json['coupon'];
    profile = json['profile'];
    token = json['Token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['username'] = this.username;
    data['password'] = this.password;
    data['gender'] = this.gender;
    data['phone_number'] = this.phoneNumber;
    data['email'] = this.email;
    data['chooseType'] = this.chooseType;
    data['name_store'] = this.nameStore;
    data['coupon'] = this.coupon;
    data['profile'] = this.profile;
    data['Token'] = this.token;
    return data;
  }
}
