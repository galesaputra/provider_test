import 'package:moor_flutter/moor_flutter.dart';
part 'moor_database.g.dart';
class Carts extends Table {
  IntColumn get id_cart => integer().autoIncrement()();
  TextColumn get id => text().nullable()();
  TextColumn get name => text().nullable()();
  IntColumn get qty => integer().nullable()();
  TextColumn get price => text().nullable()();
  TextColumn get img_path => text().nullable()();

  TextColumn get description => text().nullable()();
  TextColumn get username => text().nullable()();
  TextColumn get location_name => text().nullable()();

  TextColumn get halal => text().nullable()();
  TextColumn get is_sold_out => text().nullable()();
  TextColumn get item_condition => text().nullable()();
  TextColumn get weight => text().nullable()();

}

@UseMoor(tables:[Carts])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(FlutterQueryExecutor.inDatabaseFolder(path: 'dbmoor_cart2.sqlite', logStatements: true));

  int get schemaVersion => 1;
  Future<List<Cart>> ambilAllCart() => select(carts).get();

  Stream<List<Cart>> getTotal() => select(carts).watch();

  Future tambahNewCart(Cart cart) => into(carts).insert(cart);
  Future hapusNewCart(Cart cart) => delete(carts).delete(cart);
  Future hapusAllCart() => delete(carts).go();
  Future ubahNewCart(Insertable<Cart> cart) => update(carts).replace(cart);

}