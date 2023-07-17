import 'dart:convert';

List<MakeModel> MakeModelFromJson(String str) => List<MakeModel>.from(json.decode(str).map((x) => MakeModel.fromJson(x)));

String MakeModelToJson(List<MakeModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MakeModel {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  MakeModel({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  factory MakeModel.fromJson(Map<String, dynamic> json) => MakeModel(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    completed: json["completed"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "completed": completed,
  };
}
