import 'dart:io';

import 'package:drift/drift.dart';
import 'package:movie_portfolio/data/db/entity/reply_entity.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:drift/native.dart';

part 'application_database.g.dart';

@DriftDatabase(tables: [ReplyEntity])
class ApplicationDatabase extends _$ApplicationDatabase {
  ApplicationDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}