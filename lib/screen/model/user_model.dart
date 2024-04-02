class UserModel{
  String? id,name,username,email,street,suite,city,zipcode,lat,lng,phone,web,companyName,catchPhrase,bs;
  UserModel({this.id,this.name,this.email,this.bs,this.catchPhrase,this.city,this.companyName,this.lat,this.lng,this.phone,this.street,this.suite,this.username,this.web,this.zipcode});
  factory UserModel.mapToModel(Map m1)
  {
    return UserModel(id: m1["id"],
        name: m1["name"],
        bs: m1["company"]["bs"],
        catchPhrase:m1["company"]["catchPhrase"] ,
        city: m1["address"]["city"],
        companyName: m1["company"]["name"],
        email: m1["email"],
        lat: m1["address"]["geo"]["lat"],
        lng: m1["address"]["geo"]["lng"],
        phone: m1["phone"],
        street: m1["address"]["street"],
        suite: m1["address"]["suite"],
        username: m1["username"],
        web: m1["website"],
        zipcode: m1["address"]["zipcode"]);
  }
}
