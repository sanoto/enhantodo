import 'package:moor/moor.dart';
import 'package:moor_ffi/moor_ffi.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'dart:io';
import 'dart:async';

part 'db.g.dart';

enum Priority {
  must,
  should,
  maybe,
  notHaveTo,
}

class Todos extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 1, max: 30)();
  TextColumn get body => text().nullable()();
  DateTimeColumn get dueDate => dateTime().nullable()();
  IntColumn get priority => intEnum<Priority>()();
  IntColumn get category => integer().nullable()();
}

@DataClassName('Category')
class Categories extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get description => text()();
}

class Schedules extends Table {
  DateTimeColumn get time => dateTime()();

  @override
  Set<Column> get primaryKey => {time};
}

class Reminders extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get todo => integer()();
  IntColumn get schedule => integer()();
  BoolColumn get dailyRepeat => boolean()();
  BoolColumn get weeklyRepeat => boolean()();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file);
  });
}

@UseMoor(tables: [Todos, Categories, Schedules, Reminders])
class EnhanTodoDatabase extends _$EnhanTodoDatabase {
  EnhanTodoDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<Todo>> get todoList => select(todos).get();
  Future<List<Category>> get categoryList => select(categories).get();
  Future<List<Schedule>> get scheduleList => select(schedules).get();
  Future<List<Reminder>> get reminderList => select(reminders).get();
}
