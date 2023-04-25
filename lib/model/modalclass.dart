
class DataModal {
  int? id;
  String? profile_url;
  String? title;
  String? fname;
  String? lname;
  String? email;
  String? website;
  String? phoneNo;
  String? orgName;
  String? designation;
  String? add1;
  String? add2;
  String? city;
  String? state;
  String? pincode;
  String? profilePic;
  String? coverpic;
  String? youtube;
  String? twitter;
  String? instagram;
  String? facebook;
  String? linkedin;
  String? createdDate;
  int? user;
  int? profiletheme;
  String? profile_url1;

  DataModal(
      {this.id,
        this.profile_url,
        this.title,
        this.fname,
        this.lname,
        this.email,
        this.website,
        this.phoneNo,
        this.orgName,
        this.designation,
        this.add1,
        this.add2,
        this.city,
        this.state,
        this.pincode,
        this.profilePic,
        this.coverpic,
        this.youtube,
        this.twitter,
        this.instagram,
        this.facebook,
        this.linkedin,
        this.createdDate,
        this.user,
        this.profiletheme,
        this.profile_url1
      });

  DataModal.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    profile_url = json['profile_url'];
    title = json['title'];
    fname = json['fname'].toString();
    lname = json['lname'].toString();
    email = json['email'].toString();
    website = json['website'].toString();
    phoneNo = json['phone_no'].toString();
    orgName = json['org_name'].toString();
    designation = json['designation'].toString();
    add1 = json['add_1'].toString();
    add2 = json['add_2'].toString();
    city = json['city'].toString();
    state = json['state'].toString();
    pincode = json['pincode'].toString();
    profilePic = json['profile_pic'].toString();
    coverpic = json['coverpic'].toString();
    youtube = json['youtube'].toString();
    twitter = json['twitter'].toString();
    instagram = json['instagram'].toString();
    facebook = json['facebook'].toString();
    linkedin = json['linkedin'].toString();
    createdDate = json['created_date'].toString();
    user = json['user'];
    profiletheme = json['profile_theme'];
    profile_url1 = json['profile_url1'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['profile_url'] = this.profile_url;
    data['title'] = this.title;
    data['fname'] = this.fname;
    data['lname'] = this.lname;
    data['email'] = this.email;
    data['website'] = this.website;
    data['phone_no'] = this.phoneNo;
    data['org_name'] = this.orgName;
    data['designation'] = this.designation;
    data['add_1'] = this.add1;
    data['add_2'] = this.add2;
    data['city'] = this.city;
    data['state'] = this.state;
    data['pincode'] = this.pincode;
    data['profile_pic'] = this.profilePic;
    data['cover_pic'] = this.coverpic;
    data['youtube'] = this.youtube;
    data['twitter'] = this.twitter;
    data['instagram'] = this.instagram;
    data['facebook'] = this.facebook;
    data['linkedin'] = this.linkedin;
    data['created_date'] = this.createdDate;
    data['user'] = this.user;
    data['profile_theme'] = this.profiletheme;
    data['profile_url1'] = this.profile_url1;
    return data;
  }
}