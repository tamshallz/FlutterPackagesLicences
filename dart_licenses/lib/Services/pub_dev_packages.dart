import 'package:json_annotation/json_annotation.dart';

part 'pub_dev_packages.g.dart';

@JsonSerializable()
class PubDevPackagesModel {
  final String? name;
  final Latest? latest;

  PubDevPackagesModel({
    required this.name,
    required this.latest,
  });

  factory PubDevPackagesModel.fromJson(Map<String, dynamic> json) =>
      _$PubDevPackagesModelFromJson(json);
}

class PopularPackages {
  final String? package;

  PopularPackages({
    required this.package,
  });

  factory PopularPackages.fromJson(Map<String, dynamic> json) =>
      PopularPackages(
        package: json['package'] as String?,
      );
}

@JsonSerializable()
class Latest {
  final String? version;
  final Pubspec? pubspec;
  final String? archive_url;
  final String? package_url;
  final String? url;

  Latest({
    required this.version,
    required this.pubspec,
    required this.archive_url,
    required this.package_url,
    required this.url,
  });
  factory Latest.fromJson(Map<String, dynamic> json) => _$LatestFromJson(json);
}

@JsonSerializable()
class Pubspec {
  final String? name;
  final String? description;
  final String? version;
  final String? repository;
  final String? issue_tracker;
  final String? homepage;
  final Environment? envirionment;

  Pubspec({
    required this.name,
    required this.description,
    required this.version,
    required this.repository,
    required this.issue_tracker,
    required this.homepage,
    required this.envirionment,
  });
  factory Pubspec.fromJson(Map<String, dynamic> json) =>
      _$PubspecFromJson(json);
}

@JsonSerializable()
class Environment {
  final String? sdk;
  Environment({
    required this.sdk,
  });
  factory Environment.fromJson(Map<String, dynamic> json) =>
      _$EnvironmentFromJson(json);
}

@JsonSerializable()
class Dependencies {
  final String? analyzer;
  final String? analyzer_plugin;
  final String? build;
  final String? custom_lint_builder;
  final String? equatable;
  final String? finder_matcher_annotation;
  final String? meta;
  final String? path;
  final String? source_gen;

  Dependencies({
    required this.analyzer,
    required this.analyzer_plugin,
    required this.build,
    required this.custom_lint_builder,
    required this.equatable,
    required this.finder_matcher_annotation,
    required this.meta,
    required this.path,
    required this.source_gen,
  });

  factory Dependencies.fromJson(Map<String, dynamic> json) =>
      _$DependenciesFromJson(json);
}

@JsonSerializable()
class DevDependencies {
  final String? build_runner;
  final String? build_test;
  final String? mocktail;

  DevDependencies({
    required this.build_runner,
    required this.build_test,
    required this.mocktail,
  });

  factory DevDependencies.fromJson(Map<String, dynamic> json) =>
      _$DevDependenciesFromJson(json);
}
