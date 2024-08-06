import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

List<DateTime>? getMonthView(DateTime? currentDate) {
  // calculate the current month and return in a list of date times from the currentDate
  if (currentDate == null) return null;

  final List<DateTime> monthView = [];

  final int year = currentDate.year;
  final int month = currentDate.month;

  final DateTime firstDayOfMonth = DateTime(year, month, 1);
  final int daysInMonth = DateTime(year, month + 1, 0).day;

  int weekdayOfFirstDay = firstDayOfMonth.weekday;
  if (weekdayOfFirstDay == 7) weekdayOfFirstDay = 0;

  for (int i = 0; i < weekdayOfFirstDay; i++) {
    monthView
        .add(firstDayOfMonth.subtract(Duration(days: weekdayOfFirstDay - i)));
  }

  for (int i = 1; i <= daysInMonth; i++) {
    monthView.add(DateTime(year, month, i));
  }

  int daysAdded = monthView.length;

  for (int i = 1; daysAdded % 7 != 0; i++) {
    monthView.add(DateTime(year, month + 1, i));
    daysAdded++;
  }

  return monthView;
}

DateTime? getNextWeek(DateTime? currentDate) {
  // determine the date seven days from the currentDate
  if (currentDate == null) {
    return null;
  }
  return currentDate.add(Duration(days: 7));
}

List<DateTime>? getWeekView(DateTime? currentDate) {
  // define the current week and return a list of date times based on the currentDate
  if (currentDate == null) return null;

  // Get the start of the current week (Sunday).
  final startOfWeek =
      currentDate.subtract(Duration(days: currentDate.weekday - 1));

  // Create a list of date times for the current week.
  final week = List<DateTime>.generate(
      7, (index) => startOfWeek.add(Duration(days: index)));

  return week;
}

DateTime? convertCurrentTimetoDay(DateTime? currentTime) {
  // convert the current time into a dateTime format & return the date
  if (currentTime == null) return null;
  final now = DateTime.now();
  final date = DateTime(now.year, now.month, now.day);
  return date;
}
