class UserModel1
{
  String?id;
  String?username,email,name;
  AddressModel? addressModel;
  CompanyModel? companyModel;
  UserModel1({this.username,this.email,this.id,this.addressModel,this.name,this.companyModel});
  factory UserModel1.mapToModel(Map m1)
  {
    return UserModel1(username: m1['username'],email:m1['email'],name: m1['name'],addressModel: AddressModel.mapToModel(m1['address']),companyModel: CompanyModel.mapToModel(m1['company']),id: m1["id"]);
  }


}
class AddressModel
{
  GeoModel? geoModel;
  String?street,suite,city,zipcode;
  AddressModel({this.city,this.suite,this.street,this.zipcode,this.geoModel});
  factory AddressModel.mapToModel(Map m1)
  {
    return AddressModel(street: m1['street'],suite:m1['suite'],city: m1['city'],zipcode: m1['zipcode'],geoModel:GeoModel.mapToModel(m1['geo']));
  }
}
class GeoModel
{
  String?lag,lat;

  GeoModel({this.lag,this.lat});
  factory GeoModel.mapToModel(Map m1)
  {
    return GeoModel(lag: m1['lng'],lat: m1['lat']);
  }
}
class  CompanyModel
{
  String?name,catchPhrase,bs;
  CompanyModel({this.name,this.bs,this.catchPhrase});
  factory CompanyModel.mapToModel(Map m1)
  {
    return CompanyModel(name: m1['name'],catchPhrase: m1['catchPhrase'],bs: m1['bs']);
  }
}
