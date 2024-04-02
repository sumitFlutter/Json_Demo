class PostModel{
  int? id,userId;
  String? title,body;
  PostModel({this.id,this.body,this.title,this.userId});
  factory PostModel.mapToModel(Map m1)
  {
    return PostModel(body: m1["body"],title: m1["title"],id: m1["id"],userId: m1["userId"],);
  }
}
