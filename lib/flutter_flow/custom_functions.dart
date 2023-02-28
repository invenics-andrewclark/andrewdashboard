import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

double progressBarValue(
  int? totalNumber,
  int? completedNumber,
) {
  // Sum the number of tasks complete and convert to a 0 - 1.0 scale
  if (totalNumber == null || completedNumber == null || totalNumber == 0) {
    return 0.0;
  }
  final value = completedNumber.toDouble() / totalNumber;
  if (value == 1.0) {
    return 1.0;
  }
  return value;
}

String? ddmmyyFormat(String? datePick) {
  // to select date and shoe in ddmmyy format
  // Add your function code here!
  DateFormat inputFormat = DateFormat("yMd");
  DateFormat outputFormat = DateFormat("dd-MM-yyyy");
  DateFormat fullOutputFormat = DateFormat("dd-MM-yyyy");
  DateTime date = inputFormat.parse(datePick!);
  var dateString = outputFormat.format(date);
  var dateTimeString = fullOutputFormat.format(date);
  print("Formatted date : $dateTimeString");
  return dateTimeString;
}
