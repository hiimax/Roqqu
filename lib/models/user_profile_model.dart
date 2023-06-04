class UserProfileModel {
  bool? status;
  int? statusCode;
  String? message;
  Data? data;

  UserProfileModel({this.status, this.statusCode, this.message, this.data});

  UserProfileModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statusCode = json['status_code'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['status_code'] = this.statusCode;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? name;
  String? email;
  bool? emailVerifiedAt;
  String? country;
  String? firstName;
  String? lastName;
  String? deviceId;
  String? phoneNumber;
  String? apiToken;
  String? phoneVerify;
  String? emailVery;
  String? profileImage;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.name,
      this.email,
      this.emailVerifiedAt,
      this.country,
      this.firstName,
      this.lastName,
      this.deviceId,
      this.phoneNumber,
      this.apiToken,
      this.phoneVerify,
      this.emailVery,
      this.profileImage,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    country = json['country'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    deviceId = json['device_id'];
    phoneNumber = json['phoneNumber'];
    apiToken = json['api_token'];
    phoneVerify = json['phone_verify'];
    emailVery = json['email_very'];
    profileImage = json['profile_image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['country'] = this.country;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['device_id'] = this.deviceId;
    data['phoneNumber'] = this.phoneNumber;
    data['api_token'] = this.apiToken;
    data['phone_verify'] = this.phoneVerify;
    data['email_very'] = this.emailVery;
    data['profile_image'] = this.profileImage;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
