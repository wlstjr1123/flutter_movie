import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_model.g.dart';
part 'banner_model.freezed.dart';

@freezed
class BannerModel with _$BannerModel {
  const factory BannerModel({
    String? bannerId,
    String? imageurl,
    String? movieName,
  }) = _BannerModel;

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);
}