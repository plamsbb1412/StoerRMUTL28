import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:stoerrmutl/model/cart_model.dart';

class SQLiteHelper {
  final String nameDatabase = 'projectSTOER.db';
  final String tableDatabass = 'orderTABLE';
  int version = 1;
  final String idColumn = 'id';
  final String idShopColumn = 'idStoer';
  final String nameShop = 'nameStoer';
  final String idFood = 'idFood';
  final String nameFood = 'nameFood';
  final String price = 'price';
  final String amount = 'amount';
  final String sum = 'sum';

  SQLiteHelper() {
    initDatabass();
  }

  Future<Null> initDatabass() async {
    await openDatabase(join(await getDatabasesPath(), nameDatabase),
        onCreate: (db, version) => db.execute(
            'CREATE TABLE $tableDatabass ($idColumn INTEGER PRIMARY KEY, $idShopColumn TEXT, $nameShop TEXT, $idFood TEXT, $nameFood TEXT, $price TEXT, $amount TEXT, $sum TEXT)'),
        version: version);
  }

  Future<Database> connectedDatabase() async {
    return openDatabase(join(await getDatabasesPath(), nameDatabase));
  }

  Future<Null> insertDataToSQLite(CartModel cartModel) async {
    Database database = await connectedDatabase();
    try {
      database.insert(
        tableDatabass,
        cartModel.toJson(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );
    } catch (e) {
      print('e insertData ==>> ${e.toString()}');
    }
  }

  Future<List<CartModel>> readAllDataFormSQLite() async {
    Database database = await connectedDatabase();
    List<CartModel> cartModels = List();
    List<Map<String, dynamic>> maps = await database.query(tableDatabass);
    for (var map in maps) {
      CartModel cartModel = CartModel.fromJson(map);
      cartModels.add(cartModel);
    }

    return cartModels;
  }
}
