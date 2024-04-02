class AlbumModel{
  int? id,userId;
  String? title;
  AlbumModel({this.id,this.title,this.userId});
  factory AlbumModel.mapToModel(Map m1)
  {
    return AlbumModel(title: m1["title"],id: m1["id"],userId: m1["userId"],);
  }
}
