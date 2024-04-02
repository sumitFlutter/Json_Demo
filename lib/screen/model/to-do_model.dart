class ToDoModel{
  int? id,userId;
  String? title;
  bool? completed;
  ToDoModel({this.id,this.title,this.userId,this.completed});
  factory ToDoModel.mapToModel(Map m1)
  {
    return ToDoModel(title: m1["title"],id: m1["id"],userId: m1["userId"],completed:m1["completed"] );
  }
}
