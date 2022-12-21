import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

//reference our box.

  final _mybox = Hive.box('mybox');

  //Uygulamayı ilk kez açıyorsak bu yöntemi çalıştırmamız gerekir.
  void createInitialData() {
    toDoList = [
      ["Görev Gir.", false],
      ["Görev Gir.", false],
    ];
  }

  //veritabanından veri yükleme
  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

  //veritabanını güncelleme
  void updateDataBase() {
    _mybox.put("TODOLIST", toDoList);
  }
}
