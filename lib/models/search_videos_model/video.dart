import 'id.dart';
import 'snippet.dart';

class Video {
  String? kind;
  String? etag;
  Id? id;
  Snippet? snippet;

  Video({this.kind, this.etag, this.id, this.snippet});

  factory Video.fromJson(Map<String, dynamic> json) => Video(
        kind: json['kind'] as String?,
        etag: json['etag'] as String?,
        id: json['id'] == null
            ? null
            : Id.fromJson(json['id'] as Map<String, dynamic>),
        snippet: json['snippet'] == null
            ? null
            : Snippet.fromJson(json['snippet'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'kind': kind,
        'etag': etag,
        'id': id?.toJson(),
        'snippet': snippet?.toJson(),
      };
}
