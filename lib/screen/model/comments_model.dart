class CommentModel{
  int? id,postId;
  String? name,body,email;
  CommentModel({this.id,this.body,this.name,this.postId,this.email});
  factory CommentModel.mapToModel(Map m1)
  {
    return CommentModel(body: m1["body"],name: m1["name"],id: m1["id"],postId: m1["postId"],email: m1["email"]);
  }
}
