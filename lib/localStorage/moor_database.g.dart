// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Cart extends DataClass implements Insertable<Cart> {
  final int id_cart;
  final String id;
  final String name;
  final int qty;
  final String price;
  final String img_path;
  final String description;
  final String username;
  final String location_name;
  final String halal;
  final String is_sold_out;
  final String item_condition;
  final String weight;
  Cart(
      {@required this.id_cart,
      this.id,
      this.name,
      this.qty,
      this.price,
      this.img_path,
      this.description,
      this.username,
      this.location_name,
      this.halal,
      this.is_sold_out,
      this.item_condition,
      this.weight});
  factory Cart.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Cart(
      id_cart:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}id_cart']),
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      qty: intType.mapFromDatabaseResponse(data['${effectivePrefix}qty']),
      price:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}price']),
      img_path: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}img_path']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      username: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}username']),
      location_name: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}location_name']),
      halal:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}halal']),
      is_sold_out: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_sold_out']),
      item_condition: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}item_condition']),
      weight:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}weight']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id_cart != null) {
      map['id_cart'] = Variable<int>(id_cart);
    }
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || qty != null) {
      map['qty'] = Variable<int>(qty);
    }
    if (!nullToAbsent || price != null) {
      map['price'] = Variable<String>(price);
    }
    if (!nullToAbsent || img_path != null) {
      map['img_path'] = Variable<String>(img_path);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || username != null) {
      map['username'] = Variable<String>(username);
    }
    if (!nullToAbsent || location_name != null) {
      map['location_name'] = Variable<String>(location_name);
    }
    if (!nullToAbsent || halal != null) {
      map['halal'] = Variable<String>(halal);
    }
    if (!nullToAbsent || is_sold_out != null) {
      map['is_sold_out'] = Variable<String>(is_sold_out);
    }
    if (!nullToAbsent || item_condition != null) {
      map['item_condition'] = Variable<String>(item_condition);
    }
    if (!nullToAbsent || weight != null) {
      map['weight'] = Variable<String>(weight);
    }
    return map;
  }

  CartsCompanion toCompanion(bool nullToAbsent) {
    return CartsCompanion(
      id_cart: id_cart == null && nullToAbsent
          ? const Value.absent()
          : Value(id_cart),
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      qty: qty == null && nullToAbsent ? const Value.absent() : Value(qty),
      price:
          price == null && nullToAbsent ? const Value.absent() : Value(price),
      img_path: img_path == null && nullToAbsent
          ? const Value.absent()
          : Value(img_path),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      username: username == null && nullToAbsent
          ? const Value.absent()
          : Value(username),
      location_name: location_name == null && nullToAbsent
          ? const Value.absent()
          : Value(location_name),
      halal:
          halal == null && nullToAbsent ? const Value.absent() : Value(halal),
      is_sold_out: is_sold_out == null && nullToAbsent
          ? const Value.absent()
          : Value(is_sold_out),
      item_condition: item_condition == null && nullToAbsent
          ? const Value.absent()
          : Value(item_condition),
      weight:
          weight == null && nullToAbsent ? const Value.absent() : Value(weight),
    );
  }

  factory Cart.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Cart(
      id_cart: serializer.fromJson<int>(json['id_cart']),
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      qty: serializer.fromJson<int>(json['qty']),
      price: serializer.fromJson<String>(json['price']),
      img_path: serializer.fromJson<String>(json['img_path']),
      description: serializer.fromJson<String>(json['description']),
      username: serializer.fromJson<String>(json['username']),
      location_name: serializer.fromJson<String>(json['location_name']),
      halal: serializer.fromJson<String>(json['halal']),
      is_sold_out: serializer.fromJson<String>(json['is_sold_out']),
      item_condition: serializer.fromJson<String>(json['item_condition']),
      weight: serializer.fromJson<String>(json['weight']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id_cart': serializer.toJson<int>(id_cart),
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'qty': serializer.toJson<int>(qty),
      'price': serializer.toJson<String>(price),
      'img_path': serializer.toJson<String>(img_path),
      'description': serializer.toJson<String>(description),
      'username': serializer.toJson<String>(username),
      'location_name': serializer.toJson<String>(location_name),
      'halal': serializer.toJson<String>(halal),
      'is_sold_out': serializer.toJson<String>(is_sold_out),
      'item_condition': serializer.toJson<String>(item_condition),
      'weight': serializer.toJson<String>(weight),
    };
  }

  Cart copyWith(
          {int id_cart,
          String id,
          String name,
          int qty,
          String price,
          String img_path,
          String description,
          String username,
          String location_name,
          String halal,
          String is_sold_out,
          String item_condition,
          String weight}) =>
      Cart(
        id_cart: id_cart ?? this.id_cart,
        id: id ?? this.id,
        name: name ?? this.name,
        qty: qty ?? this.qty,
        price: price ?? this.price,
        img_path: img_path ?? this.img_path,
        description: description ?? this.description,
        username: username ?? this.username,
        location_name: location_name ?? this.location_name,
        halal: halal ?? this.halal,
        is_sold_out: is_sold_out ?? this.is_sold_out,
        item_condition: item_condition ?? this.item_condition,
        weight: weight ?? this.weight,
      );
  @override
  String toString() {
    return (StringBuffer('Cart(')
          ..write('id_cart: $id_cart, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('qty: $qty, ')
          ..write('price: $price, ')
          ..write('img_path: $img_path, ')
          ..write('description: $description, ')
          ..write('username: $username, ')
          ..write('location_name: $location_name, ')
          ..write('halal: $halal, ')
          ..write('is_sold_out: $is_sold_out, ')
          ..write('item_condition: $item_condition, ')
          ..write('weight: $weight')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id_cart.hashCode,
      $mrjc(
          id.hashCode,
          $mrjc(
              name.hashCode,
              $mrjc(
                  qty.hashCode,
                  $mrjc(
                      price.hashCode,
                      $mrjc(
                          img_path.hashCode,
                          $mrjc(
                              description.hashCode,
                              $mrjc(
                                  username.hashCode,
                                  $mrjc(
                                      location_name.hashCode,
                                      $mrjc(
                                          halal.hashCode,
                                          $mrjc(
                                              is_sold_out.hashCode,
                                              $mrjc(item_condition.hashCode,
                                                  weight.hashCode)))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Cart &&
          other.id_cart == this.id_cart &&
          other.id == this.id &&
          other.name == this.name &&
          other.qty == this.qty &&
          other.price == this.price &&
          other.img_path == this.img_path &&
          other.description == this.description &&
          other.username == this.username &&
          other.location_name == this.location_name &&
          other.halal == this.halal &&
          other.is_sold_out == this.is_sold_out &&
          other.item_condition == this.item_condition &&
          other.weight == this.weight);
}

class CartsCompanion extends UpdateCompanion<Cart> {
  final Value<int> id_cart;
  final Value<String> id;
  final Value<String> name;
  final Value<int> qty;
  final Value<String> price;
  final Value<String> img_path;
  final Value<String> description;
  final Value<String> username;
  final Value<String> location_name;
  final Value<String> halal;
  final Value<String> is_sold_out;
  final Value<String> item_condition;
  final Value<String> weight;
  const CartsCompanion({
    this.id_cart = const Value.absent(),
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.qty = const Value.absent(),
    this.price = const Value.absent(),
    this.img_path = const Value.absent(),
    this.description = const Value.absent(),
    this.username = const Value.absent(),
    this.location_name = const Value.absent(),
    this.halal = const Value.absent(),
    this.is_sold_out = const Value.absent(),
    this.item_condition = const Value.absent(),
    this.weight = const Value.absent(),
  });
  CartsCompanion.insert({
    this.id_cart = const Value.absent(),
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.qty = const Value.absent(),
    this.price = const Value.absent(),
    this.img_path = const Value.absent(),
    this.description = const Value.absent(),
    this.username = const Value.absent(),
    this.location_name = const Value.absent(),
    this.halal = const Value.absent(),
    this.is_sold_out = const Value.absent(),
    this.item_condition = const Value.absent(),
    this.weight = const Value.absent(),
  });
  static Insertable<Cart> custom({
    Expression<int> id_cart,
    Expression<String> id,
    Expression<String> name,
    Expression<int> qty,
    Expression<String> price,
    Expression<String> img_path,
    Expression<String> description,
    Expression<String> username,
    Expression<String> location_name,
    Expression<String> halal,
    Expression<String> is_sold_out,
    Expression<String> item_condition,
    Expression<String> weight,
  }) {
    return RawValuesInsertable({
      if (id_cart != null) 'id_cart': id_cart,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (qty != null) 'qty': qty,
      if (price != null) 'price': price,
      if (img_path != null) 'img_path': img_path,
      if (description != null) 'description': description,
      if (username != null) 'username': username,
      if (location_name != null) 'location_name': location_name,
      if (halal != null) 'halal': halal,
      if (is_sold_out != null) 'is_sold_out': is_sold_out,
      if (item_condition != null) 'item_condition': item_condition,
      if (weight != null) 'weight': weight,
    });
  }

  CartsCompanion copyWith(
      {Value<int> id_cart,
      Value<String> id,
      Value<String> name,
      Value<int> qty,
      Value<String> price,
      Value<String> img_path,
      Value<String> description,
      Value<String> username,
      Value<String> location_name,
      Value<String> halal,
      Value<String> is_sold_out,
      Value<String> item_condition,
      Value<String> weight}) {
    return CartsCompanion(
      id_cart: id_cart ?? this.id_cart,
      id: id ?? this.id,
      name: name ?? this.name,
      qty: qty ?? this.qty,
      price: price ?? this.price,
      img_path: img_path ?? this.img_path,
      description: description ?? this.description,
      username: username ?? this.username,
      location_name: location_name ?? this.location_name,
      halal: halal ?? this.halal,
      is_sold_out: is_sold_out ?? this.is_sold_out,
      item_condition: item_condition ?? this.item_condition,
      weight: weight ?? this.weight,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id_cart.present) {
      map['id_cart'] = Variable<int>(id_cart.value);
    }
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (qty.present) {
      map['qty'] = Variable<int>(qty.value);
    }
    if (price.present) {
      map['price'] = Variable<String>(price.value);
    }
    if (img_path.present) {
      map['img_path'] = Variable<String>(img_path.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (location_name.present) {
      map['location_name'] = Variable<String>(location_name.value);
    }
    if (halal.present) {
      map['halal'] = Variable<String>(halal.value);
    }
    if (is_sold_out.present) {
      map['is_sold_out'] = Variable<String>(is_sold_out.value);
    }
    if (item_condition.present) {
      map['item_condition'] = Variable<String>(item_condition.value);
    }
    if (weight.present) {
      map['weight'] = Variable<String>(weight.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CartsCompanion(')
          ..write('id_cart: $id_cart, ')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('qty: $qty, ')
          ..write('price: $price, ')
          ..write('img_path: $img_path, ')
          ..write('description: $description, ')
          ..write('username: $username, ')
          ..write('location_name: $location_name, ')
          ..write('halal: $halal, ')
          ..write('is_sold_out: $is_sold_out, ')
          ..write('item_condition: $item_condition, ')
          ..write('weight: $weight')
          ..write(')'))
        .toString();
  }
}

class $CartsTable extends Carts with TableInfo<$CartsTable, Cart> {
  final GeneratedDatabase _db;
  final String _alias;
  $CartsTable(this._db, [this._alias]);
  final VerificationMeta _id_cartMeta = const VerificationMeta('id_cart');
  GeneratedIntColumn _id_cart;
  @override
  GeneratedIntColumn get id_cart => _id_cart ??= _constructIdCart();
  GeneratedIntColumn _constructIdCart() {
    return GeneratedIntColumn('id_cart', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedTextColumn _id;
  @override
  GeneratedTextColumn get id => _id ??= _constructId();
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      true,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _qtyMeta = const VerificationMeta('qty');
  GeneratedIntColumn _qty;
  @override
  GeneratedIntColumn get qty => _qty ??= _constructQty();
  GeneratedIntColumn _constructQty() {
    return GeneratedIntColumn(
      'qty',
      $tableName,
      true,
    );
  }

  final VerificationMeta _priceMeta = const VerificationMeta('price');
  GeneratedTextColumn _price;
  @override
  GeneratedTextColumn get price => _price ??= _constructPrice();
  GeneratedTextColumn _constructPrice() {
    return GeneratedTextColumn(
      'price',
      $tableName,
      true,
    );
  }

  final VerificationMeta _img_pathMeta = const VerificationMeta('img_path');
  GeneratedTextColumn _img_path;
  @override
  GeneratedTextColumn get img_path => _img_path ??= _constructImgPath();
  GeneratedTextColumn _constructImgPath() {
    return GeneratedTextColumn(
      'img_path',
      $tableName,
      true,
    );
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
      true,
    );
  }

  final VerificationMeta _usernameMeta = const VerificationMeta('username');
  GeneratedTextColumn _username;
  @override
  GeneratedTextColumn get username => _username ??= _constructUsername();
  GeneratedTextColumn _constructUsername() {
    return GeneratedTextColumn(
      'username',
      $tableName,
      true,
    );
  }

  final VerificationMeta _location_nameMeta =
      const VerificationMeta('location_name');
  GeneratedTextColumn _location_name;
  @override
  GeneratedTextColumn get location_name =>
      _location_name ??= _constructLocationName();
  GeneratedTextColumn _constructLocationName() {
    return GeneratedTextColumn(
      'location_name',
      $tableName,
      true,
    );
  }

  final VerificationMeta _halalMeta = const VerificationMeta('halal');
  GeneratedTextColumn _halal;
  @override
  GeneratedTextColumn get halal => _halal ??= _constructHalal();
  GeneratedTextColumn _constructHalal() {
    return GeneratedTextColumn(
      'halal',
      $tableName,
      true,
    );
  }

  final VerificationMeta _is_sold_outMeta =
      const VerificationMeta('is_sold_out');
  GeneratedTextColumn _is_sold_out;
  @override
  GeneratedTextColumn get is_sold_out => _is_sold_out ??= _constructIsSoldOut();
  GeneratedTextColumn _constructIsSoldOut() {
    return GeneratedTextColumn(
      'is_sold_out',
      $tableName,
      true,
    );
  }

  final VerificationMeta _item_conditionMeta =
      const VerificationMeta('item_condition');
  GeneratedTextColumn _item_condition;
  @override
  GeneratedTextColumn get item_condition =>
      _item_condition ??= _constructItemCondition();
  GeneratedTextColumn _constructItemCondition() {
    return GeneratedTextColumn(
      'item_condition',
      $tableName,
      true,
    );
  }

  final VerificationMeta _weightMeta = const VerificationMeta('weight');
  GeneratedTextColumn _weight;
  @override
  GeneratedTextColumn get weight => _weight ??= _constructWeight();
  GeneratedTextColumn _constructWeight() {
    return GeneratedTextColumn(
      'weight',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id_cart,
        id,
        name,
        qty,
        price,
        img_path,
        description,
        username,
        location_name,
        halal,
        is_sold_out,
        item_condition,
        weight
      ];
  @override
  $CartsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'carts';
  @override
  final String actualTableName = 'carts';
  @override
  VerificationContext validateIntegrity(Insertable<Cart> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id_cart')) {
      context.handle(_id_cartMeta,
          id_cart.isAcceptableOrUnknown(data['id_cart'], _id_cartMeta));
    }
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    }
    if (data.containsKey('qty')) {
      context.handle(
          _qtyMeta, qty.isAcceptableOrUnknown(data['qty'], _qtyMeta));
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price'], _priceMeta));
    }
    if (data.containsKey('img_path')) {
      context.handle(_img_pathMeta,
          img_path.isAcceptableOrUnknown(data['img_path'], _img_pathMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username'], _usernameMeta));
    }
    if (data.containsKey('location_name')) {
      context.handle(
          _location_nameMeta,
          location_name.isAcceptableOrUnknown(
              data['location_name'], _location_nameMeta));
    }
    if (data.containsKey('halal')) {
      context.handle(
          _halalMeta, halal.isAcceptableOrUnknown(data['halal'], _halalMeta));
    }
    if (data.containsKey('is_sold_out')) {
      context.handle(
          _is_sold_outMeta,
          is_sold_out.isAcceptableOrUnknown(
              data['is_sold_out'], _is_sold_outMeta));
    }
    if (data.containsKey('item_condition')) {
      context.handle(
          _item_conditionMeta,
          item_condition.isAcceptableOrUnknown(
              data['item_condition'], _item_conditionMeta));
    }
    if (data.containsKey('weight')) {
      context.handle(_weightMeta,
          weight.isAcceptableOrUnknown(data['weight'], _weightMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id_cart};
  @override
  Cart map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Cart.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $CartsTable createAlias(String alias) {
    return $CartsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $CartsTable _carts;
  $CartsTable get carts => _carts ??= $CartsTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [carts];
}
