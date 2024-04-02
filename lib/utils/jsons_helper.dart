import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:json_demo/screen/model/album_model.dart';
import 'package:json_demo/screen/model/photo_model.dart';
import 'package:json_demo/screen/model/post_model.dart';
import 'package:json_demo/screen/model/to-do_model.dart';

import '../screen/model/comments_model.dart';
import '../screen/model/user1_model.dart';
import '../screen/model/user_model.dart';

class JsonHelper{
  Future<List<PostModel>> getPost()
  async {
    String postJsonString=await rootBundle.loadString("assets/json/post.json");
    List jsonList=jsonDecode(postJsonString);
    List<PostModel>postModelList=jsonList.map((e) => PostModel.mapToModel(e)).toList();
    return postModelList;
  }
  Future<List<UserModel>> getUser()
  async {
    String userJsonString=await rootBundle.loadString("assets/json/user.json");
    List jsonUserList=jsonDecode(userJsonString);
    List<UserModel>userModelList=jsonUserList.map((e) => UserModel.mapToModel(e)).toList();
    return userModelList;
  }
  Future<List<UserModel1>> getUser1()
  async {
    String userJsonString=await rootBundle.loadString("assets/json/user1.json");
    List jsonUserList=jsonDecode(userJsonString);
    List<UserModel1>userModelList=jsonUserList.map((e) => UserModel1.mapToModel(e)).toList();
    return userModelList;
  }
  Future<List<CommentModel>> getComments()
  async {
    String commentsJsonString=await rootBundle.loadString("assets/json/comments.json");
    List jsonList=jsonDecode(commentsJsonString);
    List<CommentModel>cModelList=jsonList.map((e) => CommentModel.mapToModel(e)).toList();
    return cModelList;
  }
  Future<List<AlbumModel>> getAlbums()
  async {
    String albumJsonString=await rootBundle.loadString("assets/json/album.json");
    List jsonList=jsonDecode(albumJsonString);
    List<AlbumModel>aModelList=jsonList.map((e) => AlbumModel.mapToModel(e)).toList();
    return aModelList;
  }
  Future<List<PhotoModel>> getPhotos()
  async {
    String photoJsonString=await rootBundle.loadString("assets/json/photo.json");
    List jsonList=jsonDecode(photoJsonString);
    List<PhotoModel>pModelList=jsonList.map((e) => PhotoModel.mapToModel(e)).toList();
    return pModelList;
  }
  Future<List<ToDoModel>> getTasks()
  async {
    String toDoJsonString=await rootBundle.loadString("assets/json/to-do.json");
    List jsonList=jsonDecode(toDoJsonString);
    List<ToDoModel>pModelList=jsonList.map((e) => ToDoModel.mapToModel(e)).toList();
    return pModelList;
  }
}