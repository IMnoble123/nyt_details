// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ViewedResponce _$ViewedResponceFromJson(Map<String, dynamic> json) =>
    ViewedResponce(
      status: json['status'] as String?,
      copyright: json['copyright'] as String?,
      numResults: json['numResults'] as int?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ViewedResponceToJson(ViewedResponce instance) =>
    <String, dynamic>{
      'status': instance.status,
      'copyright': instance.copyright,
      'numResults': instance.numResults,
      'results': instance.results,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      uri: json['uri'] as String?,
      url: json['url'] as String?,
      id: json['id'] as int?,
      assetId: json['assetId'] as int?,
      source: json['source'] as String?,
      publishedDate: json['published_date'] as String?,
      updated: json['updated'] as String?,
      section: json['section'] as String?,
      subsection: json['subsection'] as String?,
      nytdsection: json['nytdsection'] as String?,
      adxKeywords: json['adxKeywords'] as String?,
      column: json['column'],
      byline: json['byline'] as String?,
      type: json['type'] as String?,
      title: json['title'] as String?,
      resultAbstract: json['resultAbstract'] as String?,
      desFacet: (json['desFacet'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      orgFacet: (json['orgFacet'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      perFacet: (json['perFacet'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      geoFacet: (json['geoFacet'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
      etaId: json['etaId'] as int?,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'uri': instance.uri,
      'url': instance.url,
      'id': instance.id,
      'assetId': instance.assetId,
      'source': instance.source,
      'published_date': instance.publishedDate,
      'updated': instance.updated,
      'section': instance.section,
      'subsection': instance.subsection,
      'nytdsection': instance.nytdsection,
      'adxKeywords': instance.adxKeywords,
      'column': instance.column,
      'byline': instance.byline,
      'type': instance.type,
      'title': instance.title,
      'resultAbstract': instance.resultAbstract,
      'desFacet': instance.desFacet,
      'orgFacet': instance.orgFacet,
      'perFacet': instance.perFacet,
      'geoFacet': instance.geoFacet,
      'media': instance.media,
      'etaId': instance.etaId,
    };

Media _$MediaFromJson(Map<String, dynamic> json) => Media(
      type: json['type'] as String?,
      subtype: json['subtype'] as String?,
      caption: json['caption'] as String?,
      copyright: json['copyright'] as String?,
      approvedForSyndication: json['approvedForSyndication'] as int?,
      mediaMetadata: (json['media-metadata'] as List<dynamic>?)
          ?.map((e) => MediaMetadatum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'type': instance.type,
      'subtype': instance.subtype,
      'caption': instance.caption,
      'copyright': instance.copyright,
      'approvedForSyndication': instance.approvedForSyndication,
      'media-metadata': instance.mediaMetadata,
    };

MediaMetadatum _$MediaMetadatumFromJson(Map<String, dynamic> json) =>
    MediaMetadatum(
      url: json['url'] as String?,
      format: json['format'] as String?,
      height: json['height'] as int?,
      width: json['width'] as int?,
    );

Map<String, dynamic> _$MediaMetadatumToJson(MediaMetadatum instance) =>
    <String, dynamic>{
      'url': instance.url,
      'format': instance.format,
      'height': instance.height,
      'width': instance.width,
    };
