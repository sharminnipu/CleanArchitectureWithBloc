import 'package:equatable/equatable.dart';
class ActivityResponse extends Equatable{
  String? activity;
  String? type;
  int? participants;
  double? price;
  String? link;
  String? key;
  double? accessibility;

  ActivityResponse({this.activity,
    this.type,
    this.participants,
    this.price,
    this.link,
    this.key,
    this.accessibility});

  @override
  List<Object?> get props => [activity,type,participants,price,link,key,accessibility];
}