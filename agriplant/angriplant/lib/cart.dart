import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' show join;
//import 'path_to_your_cart_item.dart';
//import 'path_to_your_cart_database.dart';

class CartItem {
  int? id;
  String? productName;
  double? price;
  int? quantity;
  int? totalAmount;

  CartItem(
      {this.id, this.productName, this.price, this.quantity, this.totalAmount});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'productName': productName,
      'price': price,
      'quantity': quantity,
      'totalAmount': totalAmount,
    };
  }

  static CartItem fromMap(Map<String, dynamic> map) {
    return CartItem(
        id: map['id'],
        productName: map['productName'],
        price: map['price'],
        quantity: map['quantity'],
        totalAmount: map['totalAmount']);
  }
}

class CartDatabase {
  static Database? _database;

  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    }

    _database = await initDB();
    return _database;
  }

  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'cart_database.db'),
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE cartItems(
            id INTEGER PRIMARY KEY,
            productName TEXT,
            price REAL,
            quantity INTEGER,
            totalAmount INTEGER
          )
        ''');
      },
      version: 1,
    );
  }

  Future<void> insertCartItem(CartItem cartItem) async {
    final db = await database;
    await db?.insert(
      'cartItems',
      cartItem.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<CartItem>> getCartItems() async {
    final db = await database;
    final List<Map<String, Object?>>? maps = await db?.query('cartItems');
    return List.generate(maps!.length, (i) {
      return CartItem.fromMap(maps[i]);
    });
  }
}

void addToCart(CartItem cartItem) async {
  CartDatabase db = CartDatabase();
  await db.insertCartItem(cartItem);
  print('Added to cart: ${cartItem.productName}');
}

void main() async {
  CartItem itemToAdd = CartItem(
    productName: 'Product Name',
    price: 10.99,
    quantity: 1,
  );

  addToCart(itemToAdd);

  // Retrieve all items in the cart
  List<CartItem> cartItems = await CartDatabase().getCartItems();
  print('Cart Items: $cartItems');
}

class Cart extends StatefulWidget {
  const Cart({super.key});
  @override
  State createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    var cartItem;
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: cartItem.isEmpty
          ? Center(
              child: Text('Cart is empty'),
            )
          : ListView.builder(
              itemCount: cartItem.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(cartItem[index].productName),
                  subtitle:
                      Text('Price: \$${cartItem[index].price.toString()}'),
                  trailing: Text('Qty: ${cartItem[index].quantity.toString()}'),
                );
              },
            ),
    );
  }
}
