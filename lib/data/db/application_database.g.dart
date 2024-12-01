// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_database.dart';

// ignore_for_file: type=lint
class $ReplyEntityTable extends ReplyEntity
    with TableInfo<$ReplyEntityTable, ReplyEntityData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ReplyEntityTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _movieIdMeta =
      const VerificationMeta('movieId');
  @override
  late final GeneratedColumn<String> movieId = GeneratedColumn<String>(
      'movie_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _ratingMeta = const VerificationMeta('rating');
  @override
  late final GeneratedColumn<double> rating = GeneratedColumn<double>(
      'rating', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _userNameMeta =
      const VerificationMeta('userName');
  @override
  late final GeneratedColumn<String> userName = GeneratedColumn<String>(
      'user_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, movieId, rating, title, content, date, userName, userId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'reply_entity';
  @override
  VerificationContext validateIntegrity(Insertable<ReplyEntityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('movie_id')) {
      context.handle(_movieIdMeta,
          movieId.isAcceptableOrUnknown(data['movie_id']!, _movieIdMeta));
    } else if (isInserting) {
      context.missing(_movieIdMeta);
    }
    if (data.containsKey('rating')) {
      context.handle(_ratingMeta,
          rating.isAcceptableOrUnknown(data['rating']!, _ratingMeta));
    } else if (isInserting) {
      context.missing(_ratingMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('user_name')) {
      context.handle(_userNameMeta,
          userName.isAcceptableOrUnknown(data['user_name']!, _userNameMeta));
    } else if (isInserting) {
      context.missing(_userNameMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ReplyEntityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ReplyEntityData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      movieId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}movie_id'])!,
      rating: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}rating'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
      userName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_name'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
    );
  }

  @override
  $ReplyEntityTable createAlias(String alias) {
    return $ReplyEntityTable(attachedDatabase, alias);
  }
}

class ReplyEntityData extends DataClass implements Insertable<ReplyEntityData> {
  final int id;
  final String movieId;
  final double rating;
  final String title;
  final String content;
  final DateTime date;
  final String userName;
  final String userId;
  const ReplyEntityData(
      {required this.id,
      required this.movieId,
      required this.rating,
      required this.title,
      required this.content,
      required this.date,
      required this.userName,
      required this.userId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['movie_id'] = Variable<String>(movieId);
    map['rating'] = Variable<double>(rating);
    map['title'] = Variable<String>(title);
    map['content'] = Variable<String>(content);
    map['date'] = Variable<DateTime>(date);
    map['user_name'] = Variable<String>(userName);
    map['user_id'] = Variable<String>(userId);
    return map;
  }

  ReplyEntityCompanion toCompanion(bool nullToAbsent) {
    return ReplyEntityCompanion(
      id: Value(id),
      movieId: Value(movieId),
      rating: Value(rating),
      title: Value(title),
      content: Value(content),
      date: Value(date),
      userName: Value(userName),
      userId: Value(userId),
    );
  }

  factory ReplyEntityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ReplyEntityData(
      id: serializer.fromJson<int>(json['id']),
      movieId: serializer.fromJson<String>(json['movieId']),
      rating: serializer.fromJson<double>(json['rating']),
      title: serializer.fromJson<String>(json['title']),
      content: serializer.fromJson<String>(json['content']),
      date: serializer.fromJson<DateTime>(json['date']),
      userName: serializer.fromJson<String>(json['userName']),
      userId: serializer.fromJson<String>(json['userId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'movieId': serializer.toJson<String>(movieId),
      'rating': serializer.toJson<double>(rating),
      'title': serializer.toJson<String>(title),
      'content': serializer.toJson<String>(content),
      'date': serializer.toJson<DateTime>(date),
      'userName': serializer.toJson<String>(userName),
      'userId': serializer.toJson<String>(userId),
    };
  }

  ReplyEntityData copyWith(
          {int? id,
          String? movieId,
          double? rating,
          String? title,
          String? content,
          DateTime? date,
          String? userName,
          String? userId}) =>
      ReplyEntityData(
        id: id ?? this.id,
        movieId: movieId ?? this.movieId,
        rating: rating ?? this.rating,
        title: title ?? this.title,
        content: content ?? this.content,
        date: date ?? this.date,
        userName: userName ?? this.userName,
        userId: userId ?? this.userId,
      );
  ReplyEntityData copyWithCompanion(ReplyEntityCompanion data) {
    return ReplyEntityData(
      id: data.id.present ? data.id.value : this.id,
      movieId: data.movieId.present ? data.movieId.value : this.movieId,
      rating: data.rating.present ? data.rating.value : this.rating,
      title: data.title.present ? data.title.value : this.title,
      content: data.content.present ? data.content.value : this.content,
      date: data.date.present ? data.date.value : this.date,
      userName: data.userName.present ? data.userName.value : this.userName,
      userId: data.userId.present ? data.userId.value : this.userId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ReplyEntityData(')
          ..write('id: $id, ')
          ..write('movieId: $movieId, ')
          ..write('rating: $rating, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('date: $date, ')
          ..write('userName: $userName, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, movieId, rating, title, content, date, userName, userId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ReplyEntityData &&
          other.id == this.id &&
          other.movieId == this.movieId &&
          other.rating == this.rating &&
          other.title == this.title &&
          other.content == this.content &&
          other.date == this.date &&
          other.userName == this.userName &&
          other.userId == this.userId);
}

class ReplyEntityCompanion extends UpdateCompanion<ReplyEntityData> {
  final Value<int> id;
  final Value<String> movieId;
  final Value<double> rating;
  final Value<String> title;
  final Value<String> content;
  final Value<DateTime> date;
  final Value<String> userName;
  final Value<String> userId;
  const ReplyEntityCompanion({
    this.id = const Value.absent(),
    this.movieId = const Value.absent(),
    this.rating = const Value.absent(),
    this.title = const Value.absent(),
    this.content = const Value.absent(),
    this.date = const Value.absent(),
    this.userName = const Value.absent(),
    this.userId = const Value.absent(),
  });
  ReplyEntityCompanion.insert({
    this.id = const Value.absent(),
    required String movieId,
    required double rating,
    required String title,
    required String content,
    required DateTime date,
    required String userName,
    required String userId,
  })  : movieId = Value(movieId),
        rating = Value(rating),
        title = Value(title),
        content = Value(content),
        date = Value(date),
        userName = Value(userName),
        userId = Value(userId);
  static Insertable<ReplyEntityData> custom({
    Expression<int>? id,
    Expression<String>? movieId,
    Expression<double>? rating,
    Expression<String>? title,
    Expression<String>? content,
    Expression<DateTime>? date,
    Expression<String>? userName,
    Expression<String>? userId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (movieId != null) 'movie_id': movieId,
      if (rating != null) 'rating': rating,
      if (title != null) 'title': title,
      if (content != null) 'content': content,
      if (date != null) 'date': date,
      if (userName != null) 'user_name': userName,
      if (userId != null) 'user_id': userId,
    });
  }

  ReplyEntityCompanion copyWith(
      {Value<int>? id,
      Value<String>? movieId,
      Value<double>? rating,
      Value<String>? title,
      Value<String>? content,
      Value<DateTime>? date,
      Value<String>? userName,
      Value<String>? userId}) {
    return ReplyEntityCompanion(
      id: id ?? this.id,
      movieId: movieId ?? this.movieId,
      rating: rating ?? this.rating,
      title: title ?? this.title,
      content: content ?? this.content,
      date: date ?? this.date,
      userName: userName ?? this.userName,
      userId: userId ?? this.userId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (movieId.present) {
      map['movie_id'] = Variable<String>(movieId.value);
    }
    if (rating.present) {
      map['rating'] = Variable<double>(rating.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (userName.present) {
      map['user_name'] = Variable<String>(userName.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ReplyEntityCompanion(')
          ..write('id: $id, ')
          ..write('movieId: $movieId, ')
          ..write('rating: $rating, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('date: $date, ')
          ..write('userName: $userName, ')
          ..write('userId: $userId')
          ..write(')'))
        .toString();
  }
}

abstract class _$ApplicationDatabase extends GeneratedDatabase {
  _$ApplicationDatabase(QueryExecutor e) : super(e);
  $ApplicationDatabaseManager get managers => $ApplicationDatabaseManager(this);
  late final $ReplyEntityTable replyEntity = $ReplyEntityTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [replyEntity];
}

typedef $$ReplyEntityTableCreateCompanionBuilder = ReplyEntityCompanion
    Function({
  Value<int> id,
  required String movieId,
  required double rating,
  required String title,
  required String content,
  required DateTime date,
  required String userName,
  required String userId,
});
typedef $$ReplyEntityTableUpdateCompanionBuilder = ReplyEntityCompanion
    Function({
  Value<int> id,
  Value<String> movieId,
  Value<double> rating,
  Value<String> title,
  Value<String> content,
  Value<DateTime> date,
  Value<String> userName,
  Value<String> userId,
});

class $$ReplyEntityTableFilterComposer
    extends Composer<_$ApplicationDatabase, $ReplyEntityTable> {
  $$ReplyEntityTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get movieId => $composableBuilder(
      column: $table.movieId, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get rating => $composableBuilder(
      column: $table.rating, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get content => $composableBuilder(
      column: $table.content, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get userName => $composableBuilder(
      column: $table.userName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));
}

class $$ReplyEntityTableOrderingComposer
    extends Composer<_$ApplicationDatabase, $ReplyEntityTable> {
  $$ReplyEntityTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get movieId => $composableBuilder(
      column: $table.movieId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get rating => $composableBuilder(
      column: $table.rating, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get content => $composableBuilder(
      column: $table.content, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get userName => $composableBuilder(
      column: $table.userName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));
}

class $$ReplyEntityTableAnnotationComposer
    extends Composer<_$ApplicationDatabase, $ReplyEntityTable> {
  $$ReplyEntityTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get movieId =>
      $composableBuilder(column: $table.movieId, builder: (column) => column);

  GeneratedColumn<double> get rating =>
      $composableBuilder(column: $table.rating, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get content =>
      $composableBuilder(column: $table.content, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<String> get userName =>
      $composableBuilder(column: $table.userName, builder: (column) => column);

  GeneratedColumn<String> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);
}

class $$ReplyEntityTableTableManager extends RootTableManager<
    _$ApplicationDatabase,
    $ReplyEntityTable,
    ReplyEntityData,
    $$ReplyEntityTableFilterComposer,
    $$ReplyEntityTableOrderingComposer,
    $$ReplyEntityTableAnnotationComposer,
    $$ReplyEntityTableCreateCompanionBuilder,
    $$ReplyEntityTableUpdateCompanionBuilder,
    (
      ReplyEntityData,
      BaseReferences<_$ApplicationDatabase, $ReplyEntityTable, ReplyEntityData>
    ),
    ReplyEntityData,
    PrefetchHooks Function()> {
  $$ReplyEntityTableTableManager(
      _$ApplicationDatabase db, $ReplyEntityTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ReplyEntityTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ReplyEntityTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ReplyEntityTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> movieId = const Value.absent(),
            Value<double> rating = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String> content = const Value.absent(),
            Value<DateTime> date = const Value.absent(),
            Value<String> userName = const Value.absent(),
            Value<String> userId = const Value.absent(),
          }) =>
              ReplyEntityCompanion(
            id: id,
            movieId: movieId,
            rating: rating,
            title: title,
            content: content,
            date: date,
            userName: userName,
            userId: userId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String movieId,
            required double rating,
            required String title,
            required String content,
            required DateTime date,
            required String userName,
            required String userId,
          }) =>
              ReplyEntityCompanion.insert(
            id: id,
            movieId: movieId,
            rating: rating,
            title: title,
            content: content,
            date: date,
            userName: userName,
            userId: userId,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ReplyEntityTableProcessedTableManager = ProcessedTableManager<
    _$ApplicationDatabase,
    $ReplyEntityTable,
    ReplyEntityData,
    $$ReplyEntityTableFilterComposer,
    $$ReplyEntityTableOrderingComposer,
    $$ReplyEntityTableAnnotationComposer,
    $$ReplyEntityTableCreateCompanionBuilder,
    $$ReplyEntityTableUpdateCompanionBuilder,
    (
      ReplyEntityData,
      BaseReferences<_$ApplicationDatabase, $ReplyEntityTable, ReplyEntityData>
    ),
    ReplyEntityData,
    PrefetchHooks Function()>;

class $ApplicationDatabaseManager {
  final _$ApplicationDatabase _db;
  $ApplicationDatabaseManager(this._db);
  $$ReplyEntityTableTableManager get replyEntity =>
      $$ReplyEntityTableTableManager(_db, _db.replyEntity);
}
