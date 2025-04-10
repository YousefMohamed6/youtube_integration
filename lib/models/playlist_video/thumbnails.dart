import 'package:youtube_integration/models/video_details/default.dart';
import 'package:youtube_integration/models/video_details/high.dart';
import 'package:youtube_integration/models/video_details/maxres.dart';
import 'package:youtube_integration/models/video_details/medium.dart';
import 'package:youtube_integration/models/video_details/standard.dart';

class VideoThumbnails {
  Default? thumbnailsDefault;
  Medium? medium;
  High? high;
  Standard? standard;
  Maxres? maxres;

  VideoThumbnails({
    this.thumbnailsDefault,
    required this.medium,
    required this.high,
    required this.standard,
    required this.maxres,
  });

  factory VideoThumbnails.fromJson(Map<String, dynamic> json) =>
      VideoThumbnails(
        thumbnailsDefault: json['default'] == null
            ? null
            : Default.fromJson(json['default'] as Map<String, dynamic>),
        medium: json['medium'] == null
            ? null
            : Medium.fromJson(json['medium'] as Map<String, dynamic>),
        high: json['high'] == null
            ? null
            : High.fromJson(json['high'] as Map<String, dynamic>),
        standard: json['standard'] == null
            ? null
            : Standard.fromJson(json['standard'] as Map<String, dynamic>),
        maxres: json['maxres'] == null
            ? null
            : Maxres.fromJson(json['maxres'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'default': thumbnailsDefault?.toJson(),
        'medium': medium?.toJson(),
        'high': high?.toJson(),
        'standard': standard?.toJson(),
        'maxres': maxres?.toJson(),
      };
}
