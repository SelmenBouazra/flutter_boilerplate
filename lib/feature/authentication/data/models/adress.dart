import 'package:json_annotation/json_annotation.dart';
part 'adress.g.dart';

@JsonSerializable()
class Address {
  String? state;
  String? address;
  String? country;
  String? zipCode;

  Address({required this.state, required this.address, required this.country, required this.zipCode});



  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);

}