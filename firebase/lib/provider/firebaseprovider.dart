import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:respiro_projectfltr/model/advice.dart';
import 'package:respiro_projectfltr/model/diseasesmodel.dart';
import 'package:respiro_projectfltr/model/news.dart';
import 'package:respiro_projectfltr/model/notification.dart';
import 'package:respiro_projectfltr/model/polutedcity.dart';
import 'package:respiro_projectfltr/model/usermodel.dart';
import 'package:respiro_projectfltr/model/wether.dart';

class Firebaseprovider with ChangeNotifier {
  final db = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;

  final diseasesname = TextEditingController();
  final diseasesnote = TextEditingController();
  final diseaseseffect = TextEditingController();
  final diseasesovercome = TextEditingController();

  final advicename = TextEditingController();
  final advicenote = TextEditingController();

  //admin
  final msg = TextEditingController();
  final id = TextEditingController();
  final news = TextEditingController();

  clear() {
    msg.clear();
    id.clear();
    diseasesnote.clear();
    notifyListeners();
  }

  List<String> advice = [];

  void addadviselist(String advicenote) {
    advice.add(advicenote);
    notifyListeners();
  }

  //  set

  Future addadvice(AdwiseModel adwiseModel) async {
    final snapshot = await db.collection('advice').doc();

    snapshot.set(adwiseModel.toJson(snapshot.id));
  }

  Future adddiseases(
    DiseasesModel diseases,
  ) async {
    final snapshot = db.collection('Diseases').doc();

    snapshot.set(diseases.toJsone(snapshot.id));
  }

  Future addNews(NewsModel newsModel) async {
    final snapshot = db.collection('news').doc();

    snapshot.set(newsModel.tojsone(snapshot.id));
  }

  // get

  List<NotificationModel> notimodel = [];
  Future getnotification(uid) async {
    final snapshot =
        await db.collection('Notification').where('toid', isEqualTo: uid).get();

    notimodel = snapshot.docs.map((e) {
      return NotificationModel.fromJson(e.data());
    }).toList();
  }

  List<PolutedState> polutesstate = [];
  Future getPolutedCity() async {
    final snapshot = await db.collection('PolutedCities').get();

    polutesstate = snapshot.docs.map((e) {
      return PolutedState.fromJson(e.data());
    }).toList();
  }

  List<NewsModel> newslist = [];
  Future getNews() async {
    final snapshot = await db.collection('news').get();

    newslist = snapshot.docs.map((e) {
      return NewsModel.fromjsone(e.data());
    }).toList();
  }

  Usermodel? usermodel;
  Future getuser(uid) async {
    final snapshot = await await db
        .collection('user firebase')
        .where('uid', isEqualTo: uid)
        .get();

    usermodel = Usermodel.fromJson(snapshot.docs.first.data());
  }

  List<DiseasesModel> co = [];

  Future getdiseases(isequl) async {
    final snapshot = await db
        .collection('Diseases')
        .where('element', isEqualTo: isequl)
        .get();

    co = snapshot.docs.map((e) {
      return DiseasesModel.fromJson(e.data());
    }).toList();
  }

  // List<Usermodel> allusermodel = [];
  // Future gettalluser() async {
  //   final snapshot = await db.collection('user firebase').get();

  //   allusermodel = snapshot.docs.map((e) {
  //     return Usermodel.fromJson(e.data());
  //   }).toList();
  //   notifyListeners();
  // }

  Future notificationset(NotificationModel notificationModel) async {
    final snapshot = await db.collection('Notification').doc();

    snapshot.set(notificationModel.toJsone(snapshot.id));
  }

  Future adduser(
    Usermodel usermodel,
  ) async {
    final snapshot = await db.collection('user firebase').doc();

    snapshot.set(usermodel.toJsone(snapshot.id));
  }

  Future elementAdd(WetherModel wetherModel, id) async {
    final snapshot = db.collection('Elemants').doc();

    snapshot.set(wetherModel.toJson(id));
    notifyListeners();
  }

  String? selectedelemet;

  value(value) {
    selectedelemet = value as String;
    notifyListeners();
  }

  bool obscure = false;

  toggle() {
    obscure = !obscure;
    notifyListeners();
  }
}
