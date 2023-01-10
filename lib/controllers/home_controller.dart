import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import 'package:get/route_manager.dart';
import 'package:newsapp_task/models/news_model.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeNewsController extends GetxController {
  Dio dio = Dio();
 
  bool isLoading = false;
  final String _apiKey = 'e5cf6fd8aeb4448c9e971828d11de09d';
  String selectedCountry = "India";
  String tempCountry = "India";
  String selectedCountryCode = "in";
  int? selectedValue = 2;
  List<Map<String, String>> countriesList = [
    {"Nepal": "np"},
    {"USA": "us"},
    {"India": "in"},
    {"Sri Lanka": "sl"},
    {"England": "eng"},
    {"Sweden": "sn"},
    {"Pacific Island": "pc"},
  ];
 
  get newsList => null;

   get hasMore => null;

  get changeSortCategory => null;

  get sortBy => null;

  void getCountryNews() {}

  void launchURL({required String url}) {}
}