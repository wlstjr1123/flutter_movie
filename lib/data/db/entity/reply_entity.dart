import 'package:drift/drift.dart';

class ReplyEntity extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get movieId => text()();
  RealColumn get rating => real()();
  TextColumn get title => text()();
  TextColumn get content => text()();
  DateTimeColumn get date => dateTime()();
  TextColumn get userName => text()();
  TextColumn get userId => text()();
}