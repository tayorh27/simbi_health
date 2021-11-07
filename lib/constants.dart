import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

final List<String> userLikeRecords = [];
final List<Map<String, dynamic>> likesData = [];
final BehaviorSubject<List<String>> alertPost = new BehaviorSubject();
final StreamController<Map<String, dynamic>> universalController = BehaviorSubject<Map<String, dynamic>>();
final StreamController<bool> showBottomSheetController = BehaviorSubject<bool>();
final List<String> userCurrentTimeZone = [];

final firestoreinstance = FirebaseFirestore.instance;
final user = FirebaseAuth.instance.currentUser;
