import 'item.dart';
import 'page_info.dart';

class SearchVideosModel {
  String? kind;
  String? etag;
  String? nextPageToken;
  String? regionCode;
  PageInfo? pageInfo;
  List<Item>? items;

  SearchVideosModel({
    this.kind,
    this.etag,
    this.nextPageToken,
    this.regionCode,
    this.pageInfo,
    this.items,
  });

  factory SearchVideosModel.fromJson(Map<String, dynamic> json) =>
      SearchVideosModel(
        kind: json['kind'] as String?,
        etag: json['etag'] as String?,
        nextPageToken: json['nextPageToken'] as String?,
        regionCode: json['regionCode'] as String?,
        pageInfo: json['pageInfo'] == null
            ? null
            : PageInfo.fromJson(json['pageInfo'] as Map<String, dynamic>),
        items: (json['items'] as List<dynamic>?)
            ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'kind': kind,
        'etag': etag,
        'nextPageToken': nextPageToken,
        'regionCode': regionCode,
        'pageInfo': pageInfo?.toJson(),
        'items': items?.map((e) => e.toJson()).toList(),
      };
}
