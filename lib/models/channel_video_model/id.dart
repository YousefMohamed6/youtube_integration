class Id {
  final String? kind;
  final String? videoId;

  const Id({this.kind, this.videoId});

  factory Id.fromJson(Map<String, dynamic> json) => Id(
        kind: json['kind'] as String?,
        videoId: json['videoId'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'kind': kind,
        'videoId': videoId,
      };
}
