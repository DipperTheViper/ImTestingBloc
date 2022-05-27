import 'pars.dart';
import 'dart:convert';

void main(List<String> arguments) {
  // final String jsonTest = '{"id": 1,"name": "dipper", "bla":"string"}';
  // var toMap = BsTest.fromRawJson(jsonTest); //input a string to get a map
  // print(toMap.toJson());
  // print(toMap.toJson().runtimeType);

  // final Map<String, dynamic> mapTest = {
  //   "id": 1,
  //   "name": "dipper",
  //   "bla": "map"
  // };
  // var toStr = BsTest.fromJson(mapTest); //input a map to get a string
  // print(toStr.toRawJson());
  // print(toStr.toRawJson().runtimeType);

  //get data
  final int sender = 1;
  final int receiver = 2;
  final int point = 30;
  final String reason = "دلم میخواد";
  final String description = "عمری باشه جبران کنیم";
  final String pic = "bla bla";

  postData() {
    //turn them into map
    Map<String, dynamic> inputtedData = {
      "sender": sender,
      "receiver": receiver,
      "point": point,
      "reason": reason,
      "description": description,
      "pic": pic,
    };
    //use data model to turn map into string(json)
    AddAppreciatePostDataModel postJson =
        AddAppreciatePostDataModel.fromJson(inputtedData);
    String tester = postJson.toRawJson();

    print(tester);
    //post json into api!
    // try {
    //   print(tester);
    // } catch (e) {
    //   throw e;
    // }
    // return 0;
  }

  postData();
}

class AddAppreciatePostDataModel {
  AddAppreciatePostDataModel({
    required this.sender,
    required this.receiver,
    required this.point,
    required this.reason,
    required this.description,
    required this.pic,
  });

  int sender;
  int receiver;
  int point;
  String reason;
  String description;
  String pic;

  factory AddAppreciatePostDataModel.fromRawJson(String str) =>
      AddAppreciatePostDataModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddAppreciatePostDataModel.fromJson(Map<String, dynamic> json) =>
      AddAppreciatePostDataModel(
        sender: json["sender"],
        receiver: json["receiver"],
        point: json["point"],
        reason: json["reason"],
        description: json["description"],
        pic: json["pic"],
      );

  Map<String, dynamic> toJson() => {
        "sender": sender,
        "receiver": receiver,
        "point": point,
        "reason": reason,
        "description": description,
        "pic": pic,
      };
}
