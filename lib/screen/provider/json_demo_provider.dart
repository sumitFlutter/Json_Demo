import 'package:flutter/cupertino.dart';
import 'package:json_demo/utils/jsons_helper.dart';

import '../model/album_model.dart';
import '../model/comments_model.dart';
import '../model/photo_model.dart';
import '../model/post_model.dart';
import '../model/to-do_model.dart';
import '../model/user1_model.dart';
import '../model/user_model.dart';

class JsonDemoProvider with ChangeNotifier {
  bool change=false;
  JsonHelper jsonHelper = JsonHelper();
  List<PostModel> postModelList = [];
List <UserModel> userModelList=[];
List <UserModel1> user1ModelList=[];
List<CommentModel> commentsModelList=[];
List<AlbumModel> albumModelList=[];
List<PhotoModel> photoModelList=[];
List<ToDoModel> toDoModelList=[];
  void getPostP() async {
    postModelList = await jsonHelper.getPost();
  }
  void getUserP()
  async {
    userModelList= await jsonHelper.getUser();
    user1ModelList=await jsonHelper.getUser1();
  }
  void getCommentsP()
  async {
    commentsModelList=await jsonHelper.getComments();
  }
  void getAlbumsP()
  async {
    albumModelList=await jsonHelper.getAlbums();
  }
  void getPhotoP()
  async {
    photoModelList=await jsonHelper.getPhotos();
  }
  void getToDoP()
  async {
    toDoModelList=await jsonHelper.getTasks();
  }
  void toggle()
  {
    change=!change;
    notifyListeners();
  }
}