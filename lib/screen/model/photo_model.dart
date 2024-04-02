class PhotoModel{
  int? id,albumId;
  String? url,image,title;
  PhotoModel({this.id,this.title,this.albumId,this.image,this.url});
  factory PhotoModel.mapToModel(Map m1)
  {
    return PhotoModel(title: m1["title"],id: m1["id"],albumId: m1["albumId"],image: m1["thumbnailUrl"],url: m1["url"]);
  }
}
