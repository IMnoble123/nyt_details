
import 'package:json_annotation/json_annotation.dart';
part 'viewed_model.g.dart';

@JsonSerializable()
class ViewedResponce {
    String? status;
    String? copyright;
    int? numResults;
    List<Result>? results;

    ViewedResponce({
        required this.status,
        required this.copyright,
        required this.numResults,
        required this.results,
    });
    factory ViewedResponce.fromJson(Map<String, dynamic> json) => _$ViewedResponceFromJson(json);

}

@JsonSerializable()
class Result {
    String? uri;
    String? url;
    int? id;
    int? assetId;
    String? source;
    @JsonKey(name: 'published_date') String? publishedDate;
    String? updated;
    String? section;
    String? subsection;
    String? nytdsection;
    String? adxKeywords;
    dynamic column;
    String? byline;
    String? type;
    String? title;
    String? resultAbstract;
    List<String>? desFacet;
    List<String>? orgFacet;
    List<String>? perFacet;
    List<String>? geoFacet;
    List<Media>? media;
    int? etaId;

    Result({
        required this.uri,
        required this.url,
        required this.id,
        required this.assetId,
        required this.source,
        required this.publishedDate,
        required this.updated,
        required this.section,
        required this.subsection,
        required this.nytdsection,
        required this.adxKeywords,
        this.column,
        required this.byline,
        required this.type,
        required this.title,
        required this.resultAbstract,
        required this.desFacet,
        required this.orgFacet,
        required this.perFacet,
        required this.geoFacet,
        required this.media,
        required this.etaId,
    });

factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@JsonSerializable()
class Media {
    String? type;
    String? subtype;
    String? caption;
    String? copyright;
    int? approvedForSyndication;
    @JsonKey(name: 'media-metadata')
    List<MediaMetadatum>? mediaMetadata;

    Media({
        required this.type,
        required this.subtype,
        required this.caption,
        required this.copyright,
        required this.approvedForSyndication,
        required this.mediaMetadata,
    });
    factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);

}

@JsonSerializable()
class MediaMetadatum {
    String? url;
    String? format;
    int? height;
    int? width;

    MediaMetadatum({
        required this.url,
        required this.format,
        required this.height,
        required this.width,
    });
    factory MediaMetadatum.fromJson(Map<String, dynamic> json) => _$MediaMetadatumFromJson(json);

}


