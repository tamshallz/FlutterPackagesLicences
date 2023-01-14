// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pub_dev_packages.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PubDevPackagesModel _$PubDevPackagesModelFromJson(Map<String, dynamic> json) =>
    PubDevPackagesModel(
      name: json['name'] as String?,
      latest: json['latest'] == null
          ? null
          : Latest.fromJson(json['latest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PubDevPackagesModelToJson(
        PubDevPackagesModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'latest': instance.latest,
    };

Latest _$LatestFromJson(Map<String, dynamic> json) => Latest(
      version: json['version'] as String?,
      pubspec: json['pubspec'] == null
          ? null
          : Pubspec.fromJson(json['pubspec'] as Map<String, dynamic>),
      archive_url: json['archive_url'] as String?,
      package_url: json['package_url'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$LatestToJson(Latest instance) => <String, dynamic>{
      'version': instance.version,
      'pubspec': instance.pubspec,
      'archive_url': instance.archive_url,
      'package_url': instance.package_url,
      'url': instance.url,
    };

Pubspec _$PubspecFromJson(Map<String, dynamic> json) => Pubspec(
      name: json['name'] as String?,
      description: json['description'] as String?,
      version: json['version'] as String?,
      repository: json['repository'] as String?,
      issue_tracker: json['issue_tracker'] as String?,
      homepage: json['homepage'] as String?,
      envirionment: json['envirionment'] == null
          ? null
          : Environment.fromJson(json['envirionment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PubspecToJson(Pubspec instance) => <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'version': instance.version,
      'repository': instance.repository,
      'issue_tracker': instance.issue_tracker,
      'homepage': instance.homepage,
      'envirionment': instance.envirionment,
    };

Environment _$EnvironmentFromJson(Map<String, dynamic> json) => Environment(
      sdk: json['sdk'] as String?,
    );

Map<String, dynamic> _$EnvironmentToJson(Environment instance) =>
    <String, dynamic>{
      'sdk': instance.sdk,
    };

Dependencies _$DependenciesFromJson(Map<String, dynamic> json) => Dependencies(
      analyzer: json['analyzer'] as String?,
      analyzer_plugin: json['analyzer_plugin'] as String?,
      build: json['build'] as String?,
      custom_lint_builder: json['custom_lint_builder'] as String?,
      equatable: json['equatable'] as String?,
      finder_matcher_annotation: json['finder_matcher_annotation'] as String?,
      meta: json['meta'] as String?,
      path: json['path'] as String?,
      source_gen: json['source_gen'] as String?,
    );

Map<String, dynamic> _$DependenciesToJson(Dependencies instance) =>
    <String, dynamic>{
      'analyzer': instance.analyzer,
      'analyzer_plugin': instance.analyzer_plugin,
      'build': instance.build,
      'custom_lint_builder': instance.custom_lint_builder,
      'equatable': instance.equatable,
      'finder_matcher_annotation': instance.finder_matcher_annotation,
      'meta': instance.meta,
      'path': instance.path,
      'source_gen': instance.source_gen,
    };

DevDependencies _$DevDependenciesFromJson(Map<String, dynamic> json) =>
    DevDependencies(
      build_runner: json['build_runner'] as String?,
      build_test: json['build_test'] as String?,
      mocktail: json['mocktail'] as String?,
    );

Map<String, dynamic> _$DevDependenciesToJson(DevDependencies instance) =>
    <String, dynamic>{
      'build_runner': instance.build_runner,
      'build_test': instance.build_test,
      'mocktail': instance.mocktail,
    };
