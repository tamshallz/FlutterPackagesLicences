// import 'dart:io';

import 'package:dart_licenses/Views/card_details.dart';
import 'package:flutter/material.dart';
import '../Services/pub_dev_packages.dart';
import 'package:dart_licenses/Services/http_clients.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<PubDevPackagesModel>? pubPackages = [];

  List<PopularPackages>? popularPackages;

  bool loading = true;

  // double loadingValue = 0;

  @override
  void initState() {
    super.initState();
    getPopularity();
  }

  Future<List<PubDevPackagesModel>> fetchPopularityDetails({
    page,
  }) async {
    List<PubDevPackagesModel> loaded = [];
    late Map<String, dynamic> response;
    for (int i = 0; i < 10; i++) {
      response = await HttpClient.instance
          .fetchPopularityData(params: {'page': '$page'});
      for (var data in response['packages']) {
        try {
          response = await HttpClient.instance
              .fetchData(params: {}, packageName: data['package'].toString());
          loaded.add(
            PubDevPackagesModel.fromJson(response),
          );
        } catch (e) {
          // ignore: avoid_print
          print(e);
        }
      }
    }
    return loaded;
  }

  getPopularity() {
    fetchPopularityDetails().then((value) async {
      setState(() {
        pubPackages = value;
        loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: loading
            ? const CircularProgressIndicator()
            : ListView.builder(
                itemCount: pubPackages!.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CardDetailsPage(
                          pubPackage: pubPackages![index],
                        ),
                      ),
                    ),
                    child: Card(
                      elevation: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              pubPackages![index].name.toString().toUpperCase(),
                              style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                letterSpacing: .5,
                              ),
                            ),
                            Text(
                              pubPackages![index].latest!.version.toString(),
                              style: const TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                physics: const BouncingScrollPhysics(),
              ),
      ),
    );
  }
}
