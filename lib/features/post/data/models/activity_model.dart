import 'package:architecture/features/post/domain/entities/activity_response.dart';

class ActivityModel extends ActivityResponse{

  ActivityModel({
    String? activity,
    String? type,
    int? participants,
    double? price,
    String? link,
    String? key,
    double? accessibility
   }):super(activity: activity,type: type,participants: participants,price: price,link: link,key: key,accessibility: accessibility);


  ActivityModel.fromJson(Map<String, dynamic> json) {
    activity = json['activity'];
    type = json['type'];
    participants = json['participants'];
    price = json['price'].toDouble();
    link = json['link'];
    key = json['key'];
    accessibility = json['accessibility'].toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['activity'] = this.activity;
    data['type'] = this.type;
    data['participants'] = this.participants;
    data['price'] = this.price;
    data['link'] = this.link;
    data['key'] = this.key;
    data['accessibility'] = this.accessibility;
    return data;
  }

}