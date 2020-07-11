// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Todo extends DataClass implements Insertable<Todo> {
  final int id;
  final String title;
  final String body;
  final DateTime dueDate;
  final Priority priority;
  final int category;
  Todo(
      {@required this.id,
      @required this.title,
      this.body,
      this.dueDate,
      @required this.priority,
      this.category});
  factory Todo.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Todo(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      body: stringType.mapFromDatabaseResponse(data['${effectivePrefix}body']),
      dueDate: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}due_date']),
      priority: $TodosTable.$converter0.mapToDart(
          intType.mapFromDatabaseResponse(data['${effectivePrefix}priority'])),
      category:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}category']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || body != null) {
      map['body'] = Variable<String>(body);
    }
    if (!nullToAbsent || dueDate != null) {
      map['due_date'] = Variable<DateTime>(dueDate);
    }
    if (!nullToAbsent || priority != null) {
      final converter = $TodosTable.$converter0;
      map['priority'] = Variable<int>(converter.mapToSql(priority));
    }
    if (!nullToAbsent || category != null) {
      map['category'] = Variable<int>(category);
    }
    return map;
  }

  TodosCompanion toCompanion(bool nullToAbsent) {
    return TodosCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      body: body == null && nullToAbsent ? const Value.absent() : Value(body),
      dueDate: dueDate == null && nullToAbsent
          ? const Value.absent()
          : Value(dueDate),
      priority: priority == null && nullToAbsent
          ? const Value.absent()
          : Value(priority),
      category: category == null && nullToAbsent
          ? const Value.absent()
          : Value(category),
    );
  }

  factory Todo.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Todo(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      body: serializer.fromJson<String>(json['body']),
      dueDate: serializer.fromJson<DateTime>(json['dueDate']),
      priority: serializer.fromJson<Priority>(json['priority']),
      category: serializer.fromJson<int>(json['category']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'body': serializer.toJson<String>(body),
      'dueDate': serializer.toJson<DateTime>(dueDate),
      'priority': serializer.toJson<Priority>(priority),
      'category': serializer.toJson<int>(category),
    };
  }

  Todo copyWith(
          {int id,
          String title,
          String body,
          DateTime dueDate,
          Priority priority,
          int category}) =>
      Todo(
        id: id ?? this.id,
        title: title ?? this.title,
        body: body ?? this.body,
        dueDate: dueDate ?? this.dueDate,
        priority: priority ?? this.priority,
        category: category ?? this.category,
      );
  @override
  String toString() {
    return (StringBuffer('Todo(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('body: $body, ')
          ..write('dueDate: $dueDate, ')
          ..write('priority: $priority, ')
          ..write('category: $category')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          title.hashCode,
          $mrjc(
              body.hashCode,
              $mrjc(dueDate.hashCode,
                  $mrjc(priority.hashCode, category.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Todo &&
          other.id == this.id &&
          other.title == this.title &&
          other.body == this.body &&
          other.dueDate == this.dueDate &&
          other.priority == this.priority &&
          other.category == this.category);
}

class TodosCompanion extends UpdateCompanion<Todo> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> body;
  final Value<DateTime> dueDate;
  final Value<Priority> priority;
  final Value<int> category;
  const TodosCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.body = const Value.absent(),
    this.dueDate = const Value.absent(),
    this.priority = const Value.absent(),
    this.category = const Value.absent(),
  });
  TodosCompanion.insert({
    this.id = const Value.absent(),
    @required String title,
    this.body = const Value.absent(),
    this.dueDate = const Value.absent(),
    @required Priority priority,
    this.category = const Value.absent(),
  })  : title = Value(title),
        priority = Value(priority);
  static Insertable<Todo> custom({
    Expression<int> id,
    Expression<String> title,
    Expression<String> body,
    Expression<DateTime> dueDate,
    Expression<int> priority,
    Expression<int> category,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (body != null) 'body': body,
      if (dueDate != null) 'due_date': dueDate,
      if (priority != null) 'priority': priority,
      if (category != null) 'category': category,
    });
  }

  TodosCompanion copyWith(
      {Value<int> id,
      Value<String> title,
      Value<String> body,
      Value<DateTime> dueDate,
      Value<Priority> priority,
      Value<int> category}) {
    return TodosCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
      dueDate: dueDate ?? this.dueDate,
      priority: priority ?? this.priority,
      category: category ?? this.category,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (body.present) {
      map['body'] = Variable<String>(body.value);
    }
    if (dueDate.present) {
      map['due_date'] = Variable<DateTime>(dueDate.value);
    }
    if (priority.present) {
      final converter = $TodosTable.$converter0;
      map['priority'] = Variable<int>(converter.mapToSql(priority.value));
    }
    if (category.present) {
      map['category'] = Variable<int>(category.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TodosCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('body: $body, ')
          ..write('dueDate: $dueDate, ')
          ..write('priority: $priority, ')
          ..write('category: $category')
          ..write(')'))
        .toString();
  }
}

class $TodosTable extends Todos with TableInfo<$TodosTable, Todo> {
  final GeneratedDatabase _db;
  final String _alias;
  $TodosTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn('title', $tableName, false,
        minTextLength: 1, maxTextLength: 30);
  }

  final VerificationMeta _bodyMeta = const VerificationMeta('body');
  GeneratedTextColumn _body;
  @override
  GeneratedTextColumn get body => _body ??= _constructBody();
  GeneratedTextColumn _constructBody() {
    return GeneratedTextColumn(
      'body',
      $tableName,
      true,
    );
  }

  final VerificationMeta _dueDateMeta = const VerificationMeta('dueDate');
  GeneratedDateTimeColumn _dueDate;
  @override
  GeneratedDateTimeColumn get dueDate => _dueDate ??= _constructDueDate();
  GeneratedDateTimeColumn _constructDueDate() {
    return GeneratedDateTimeColumn(
      'due_date',
      $tableName,
      true,
    );
  }

  final VerificationMeta _priorityMeta = const VerificationMeta('priority');
  GeneratedIntColumn _priority;
  @override
  GeneratedIntColumn get priority => _priority ??= _constructPriority();
  GeneratedIntColumn _constructPriority() {
    return GeneratedIntColumn(
      'priority',
      $tableName,
      false,
    );
  }

  final VerificationMeta _categoryMeta = const VerificationMeta('category');
  GeneratedIntColumn _category;
  @override
  GeneratedIntColumn get category => _category ??= _constructCategory();
  GeneratedIntColumn _constructCategory() {
    return GeneratedIntColumn(
      'category',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, title, body, dueDate, priority, category];
  @override
  $TodosTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'todos';
  @override
  final String actualTableName = 'todos';
  @override
  VerificationContext validateIntegrity(Insertable<Todo> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title'], _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('body')) {
      context.handle(
          _bodyMeta, body.isAcceptableOrUnknown(data['body'], _bodyMeta));
    }
    if (data.containsKey('due_date')) {
      context.handle(_dueDateMeta,
          dueDate.isAcceptableOrUnknown(data['due_date'], _dueDateMeta));
    }
    context.handle(_priorityMeta, const VerificationResult.success());
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category'], _categoryMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Todo map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Todo.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $TodosTable createAlias(String alias) {
    return $TodosTable(_db, alias);
  }

  static TypeConverter<Priority, int> $converter0 =
      const EnumIndexConverter<Priority>(Priority.values);
}

class Category extends DataClass implements Insertable<Category> {
  final int id;
  final String description;
  Category({@required this.id, @required this.description});
  factory Category.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Category(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    return map;
  }

  CategoriesCompanion toCompanion(bool nullToAbsent) {
    return CategoriesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
    );
  }

  factory Category.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Category(
      id: serializer.fromJson<int>(json['id']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'description': serializer.toJson<String>(description),
    };
  }

  Category copyWith({int id, String description}) => Category(
        id: id ?? this.id,
        description: description ?? this.description,
      );
  @override
  String toString() {
    return (StringBuffer('Category(')
          ..write('id: $id, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, description.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Category &&
          other.id == this.id &&
          other.description == this.description);
}

class CategoriesCompanion extends UpdateCompanion<Category> {
  final Value<int> id;
  final Value<String> description;
  const CategoriesCompanion({
    this.id = const Value.absent(),
    this.description = const Value.absent(),
  });
  CategoriesCompanion.insert({
    this.id = const Value.absent(),
    @required String description,
  }) : description = Value(description);
  static Insertable<Category> custom({
    Expression<int> id,
    Expression<String> description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (description != null) 'description': description,
    });
  }

  CategoriesCompanion copyWith({Value<int> id, Value<String> description}) {
    return CategoriesCompanion(
      id: id ?? this.id,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoriesCompanion(')
          ..write('id: $id, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

class $CategoriesTable extends Categories
    with TableInfo<$CategoriesTable, Category> {
  final GeneratedDatabase _db;
  final String _alias;
  $CategoriesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, description];
  @override
  $CategoriesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'categories';
  @override
  final String actualTableName = 'categories';
  @override
  VerificationContext validateIntegrity(Insertable<Category> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Category map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Category.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CategoriesTable createAlias(String alias) {
    return $CategoriesTable(_db, alias);
  }
}

class Schedule extends DataClass implements Insertable<Schedule> {
  final DateTime time;
  Schedule({@required this.time});
  factory Schedule.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return Schedule(
      time:
          dateTimeType.mapFromDatabaseResponse(data['${effectivePrefix}time']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || time != null) {
      map['time'] = Variable<DateTime>(time);
    }
    return map;
  }

  SchedulesCompanion toCompanion(bool nullToAbsent) {
    return SchedulesCompanion(
      time: time == null && nullToAbsent ? const Value.absent() : Value(time),
    );
  }

  factory Schedule.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Schedule(
      time: serializer.fromJson<DateTime>(json['time']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'time': serializer.toJson<DateTime>(time),
    };
  }

  Schedule copyWith({DateTime time}) => Schedule(
        time: time ?? this.time,
      );
  @override
  String toString() {
    return (StringBuffer('Schedule(')..write('time: $time')..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf(time.hashCode);
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) || (other is Schedule && other.time == this.time);
}

class SchedulesCompanion extends UpdateCompanion<Schedule> {
  final Value<DateTime> time;
  const SchedulesCompanion({
    this.time = const Value.absent(),
  });
  SchedulesCompanion.insert({
    @required DateTime time,
  }) : time = Value(time);
  static Insertable<Schedule> custom({
    Expression<DateTime> time,
  }) {
    return RawValuesInsertable({
      if (time != null) 'time': time,
    });
  }

  SchedulesCompanion copyWith({Value<DateTime> time}) {
    return SchedulesCompanion(
      time: time ?? this.time,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (time.present) {
      map['time'] = Variable<DateTime>(time.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SchedulesCompanion(')
          ..write('time: $time')
          ..write(')'))
        .toString();
  }
}

class $SchedulesTable extends Schedules
    with TableInfo<$SchedulesTable, Schedule> {
  final GeneratedDatabase _db;
  final String _alias;
  $SchedulesTable(this._db, [this._alias]);
  final VerificationMeta _timeMeta = const VerificationMeta('time');
  GeneratedDateTimeColumn _time;
  @override
  GeneratedDateTimeColumn get time => _time ??= _constructTime();
  GeneratedDateTimeColumn _constructTime() {
    return GeneratedDateTimeColumn(
      'time',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [time];
  @override
  $SchedulesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'schedules';
  @override
  final String actualTableName = 'schedules';
  @override
  VerificationContext validateIntegrity(Insertable<Schedule> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('time')) {
      context.handle(
          _timeMeta, time.isAcceptableOrUnknown(data['time'], _timeMeta));
    } else if (isInserting) {
      context.missing(_timeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {time};
  @override
  Schedule map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Schedule.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $SchedulesTable createAlias(String alias) {
    return $SchedulesTable(_db, alias);
  }
}

class Reminder extends DataClass implements Insertable<Reminder> {
  final int id;
  final int todo;
  final int schedule;
  final bool dailyRepeat;
  final bool weeklyRepeat;
  Reminder(
      {@required this.id,
      @required this.todo,
      @required this.schedule,
      @required this.dailyRepeat,
      @required this.weeklyRepeat});
  factory Reminder.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Reminder(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      todo: intType.mapFromDatabaseResponse(data['${effectivePrefix}todo']),
      schedule:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}schedule']),
      dailyRepeat: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}daily_repeat']),
      weeklyRepeat: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}weekly_repeat']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || todo != null) {
      map['todo'] = Variable<int>(todo);
    }
    if (!nullToAbsent || schedule != null) {
      map['schedule'] = Variable<int>(schedule);
    }
    if (!nullToAbsent || dailyRepeat != null) {
      map['daily_repeat'] = Variable<bool>(dailyRepeat);
    }
    if (!nullToAbsent || weeklyRepeat != null) {
      map['weekly_repeat'] = Variable<bool>(weeklyRepeat);
    }
    return map;
  }

  RemindersCompanion toCompanion(bool nullToAbsent) {
    return RemindersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      todo: todo == null && nullToAbsent ? const Value.absent() : Value(todo),
      schedule: schedule == null && nullToAbsent
          ? const Value.absent()
          : Value(schedule),
      dailyRepeat: dailyRepeat == null && nullToAbsent
          ? const Value.absent()
          : Value(dailyRepeat),
      weeklyRepeat: weeklyRepeat == null && nullToAbsent
          ? const Value.absent()
          : Value(weeklyRepeat),
    );
  }

  factory Reminder.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Reminder(
      id: serializer.fromJson<int>(json['id']),
      todo: serializer.fromJson<int>(json['todo']),
      schedule: serializer.fromJson<int>(json['schedule']),
      dailyRepeat: serializer.fromJson<bool>(json['dailyRepeat']),
      weeklyRepeat: serializer.fromJson<bool>(json['weeklyRepeat']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'todo': serializer.toJson<int>(todo),
      'schedule': serializer.toJson<int>(schedule),
      'dailyRepeat': serializer.toJson<bool>(dailyRepeat),
      'weeklyRepeat': serializer.toJson<bool>(weeklyRepeat),
    };
  }

  Reminder copyWith(
          {int id,
          int todo,
          int schedule,
          bool dailyRepeat,
          bool weeklyRepeat}) =>
      Reminder(
        id: id ?? this.id,
        todo: todo ?? this.todo,
        schedule: schedule ?? this.schedule,
        dailyRepeat: dailyRepeat ?? this.dailyRepeat,
        weeklyRepeat: weeklyRepeat ?? this.weeklyRepeat,
      );
  @override
  String toString() {
    return (StringBuffer('Reminder(')
          ..write('id: $id, ')
          ..write('todo: $todo, ')
          ..write('schedule: $schedule, ')
          ..write('dailyRepeat: $dailyRepeat, ')
          ..write('weeklyRepeat: $weeklyRepeat')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          todo.hashCode,
          $mrjc(schedule.hashCode,
              $mrjc(dailyRepeat.hashCode, weeklyRepeat.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Reminder &&
          other.id == this.id &&
          other.todo == this.todo &&
          other.schedule == this.schedule &&
          other.dailyRepeat == this.dailyRepeat &&
          other.weeklyRepeat == this.weeklyRepeat);
}

class RemindersCompanion extends UpdateCompanion<Reminder> {
  final Value<int> id;
  final Value<int> todo;
  final Value<int> schedule;
  final Value<bool> dailyRepeat;
  final Value<bool> weeklyRepeat;
  const RemindersCompanion({
    this.id = const Value.absent(),
    this.todo = const Value.absent(),
    this.schedule = const Value.absent(),
    this.dailyRepeat = const Value.absent(),
    this.weeklyRepeat = const Value.absent(),
  });
  RemindersCompanion.insert({
    this.id = const Value.absent(),
    @required int todo,
    @required int schedule,
    @required bool dailyRepeat,
    @required bool weeklyRepeat,
  })  : todo = Value(todo),
        schedule = Value(schedule),
        dailyRepeat = Value(dailyRepeat),
        weeklyRepeat = Value(weeklyRepeat);
  static Insertable<Reminder> custom({
    Expression<int> id,
    Expression<int> todo,
    Expression<int> schedule,
    Expression<bool> dailyRepeat,
    Expression<bool> weeklyRepeat,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (todo != null) 'todo': todo,
      if (schedule != null) 'schedule': schedule,
      if (dailyRepeat != null) 'daily_repeat': dailyRepeat,
      if (weeklyRepeat != null) 'weekly_repeat': weeklyRepeat,
    });
  }

  RemindersCompanion copyWith(
      {Value<int> id,
      Value<int> todo,
      Value<int> schedule,
      Value<bool> dailyRepeat,
      Value<bool> weeklyRepeat}) {
    return RemindersCompanion(
      id: id ?? this.id,
      todo: todo ?? this.todo,
      schedule: schedule ?? this.schedule,
      dailyRepeat: dailyRepeat ?? this.dailyRepeat,
      weeklyRepeat: weeklyRepeat ?? this.weeklyRepeat,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (todo.present) {
      map['todo'] = Variable<int>(todo.value);
    }
    if (schedule.present) {
      map['schedule'] = Variable<int>(schedule.value);
    }
    if (dailyRepeat.present) {
      map['daily_repeat'] = Variable<bool>(dailyRepeat.value);
    }
    if (weeklyRepeat.present) {
      map['weekly_repeat'] = Variable<bool>(weeklyRepeat.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RemindersCompanion(')
          ..write('id: $id, ')
          ..write('todo: $todo, ')
          ..write('schedule: $schedule, ')
          ..write('dailyRepeat: $dailyRepeat, ')
          ..write('weeklyRepeat: $weeklyRepeat')
          ..write(')'))
        .toString();
  }
}

class $RemindersTable extends Reminders
    with TableInfo<$RemindersTable, Reminder> {
  final GeneratedDatabase _db;
  final String _alias;
  $RemindersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _todoMeta = const VerificationMeta('todo');
  GeneratedIntColumn _todo;
  @override
  GeneratedIntColumn get todo => _todo ??= _constructTodo();
  GeneratedIntColumn _constructTodo() {
    return GeneratedIntColumn(
      'todo',
      $tableName,
      false,
    );
  }

  final VerificationMeta _scheduleMeta = const VerificationMeta('schedule');
  GeneratedIntColumn _schedule;
  @override
  GeneratedIntColumn get schedule => _schedule ??= _constructSchedule();
  GeneratedIntColumn _constructSchedule() {
    return GeneratedIntColumn(
      'schedule',
      $tableName,
      false,
    );
  }

  final VerificationMeta _dailyRepeatMeta =
      const VerificationMeta('dailyRepeat');
  GeneratedBoolColumn _dailyRepeat;
  @override
  GeneratedBoolColumn get dailyRepeat =>
      _dailyRepeat ??= _constructDailyRepeat();
  GeneratedBoolColumn _constructDailyRepeat() {
    return GeneratedBoolColumn(
      'daily_repeat',
      $tableName,
      false,
    );
  }

  final VerificationMeta _weeklyRepeatMeta =
      const VerificationMeta('weeklyRepeat');
  GeneratedBoolColumn _weeklyRepeat;
  @override
  GeneratedBoolColumn get weeklyRepeat =>
      _weeklyRepeat ??= _constructWeeklyRepeat();
  GeneratedBoolColumn _constructWeeklyRepeat() {
    return GeneratedBoolColumn(
      'weekly_repeat',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, todo, schedule, dailyRepeat, weeklyRepeat];
  @override
  $RemindersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'reminders';
  @override
  final String actualTableName = 'reminders';
  @override
  VerificationContext validateIntegrity(Insertable<Reminder> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('todo')) {
      context.handle(
          _todoMeta, todo.isAcceptableOrUnknown(data['todo'], _todoMeta));
    } else if (isInserting) {
      context.missing(_todoMeta);
    }
    if (data.containsKey('schedule')) {
      context.handle(_scheduleMeta,
          schedule.isAcceptableOrUnknown(data['schedule'], _scheduleMeta));
    } else if (isInserting) {
      context.missing(_scheduleMeta);
    }
    if (data.containsKey('daily_repeat')) {
      context.handle(
          _dailyRepeatMeta,
          dailyRepeat.isAcceptableOrUnknown(
              data['daily_repeat'], _dailyRepeatMeta));
    } else if (isInserting) {
      context.missing(_dailyRepeatMeta);
    }
    if (data.containsKey('weekly_repeat')) {
      context.handle(
          _weeklyRepeatMeta,
          weeklyRepeat.isAcceptableOrUnknown(
              data['weekly_repeat'], _weeklyRepeatMeta));
    } else if (isInserting) {
      context.missing(_weeklyRepeatMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Reminder map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Reminder.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $RemindersTable createAlias(String alias) {
    return $RemindersTable(_db, alias);
  }
}

abstract class _$EnhanTodoDatabase extends GeneratedDatabase {
  _$EnhanTodoDatabase(QueryExecutor e)
      : super(SqlTypeSystem.defaultInstance, e);
  $TodosTable _todos;
  $TodosTable get todos => _todos ??= $TodosTable(this);
  $CategoriesTable _categories;
  $CategoriesTable get categories => _categories ??= $CategoriesTable(this);
  $SchedulesTable _schedules;
  $SchedulesTable get schedules => _schedules ??= $SchedulesTable(this);
  $RemindersTable _reminders;
  $RemindersTable get reminders => _reminders ??= $RemindersTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [todos, categories, schedules, reminders];
}
