import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';

class data extends ChangeNotifier{
  getSavedTodos() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    todoList = prefs.getStringList('todo_list') ?? [];
    todoList2 = prefs.getStringList('todo_list2') ?? [];
    

   
      todoList = todoList;
      todoList2 = todoList2;
      notifyListeners();
      
   
  }
 

Future<void> delete(int index) async {
    final prefs = await SharedPreferences.getInstance();
    todoList = prefs.getStringList('todo_list') ?? [];
    todoList2 = prefs.getStringList('todo_list2') ?? [];
    todoList.removeAt(index);
    todoList2.removeAt(index);

    prefs.setStringList('todo_list', todoList);
    prefs.setStringList('todo_list2', todoList2);
    notifyListeners();
  }


String dates ='';
List<String> todoList =[];
List<String> todoList2 =[];
 savedate()async{
  SharedPreferences prefs =await SharedPreferences.getInstance();
  prefs.setString("date11", dates);
  dates= DateFormat("dd-MM-yyyy").format(DateTime.now());
}
getdate()async{
  SharedPreferences pr =await SharedPreferences.getInstance();
  dates =pr.getString("date11") ?? '';
  notifyListeners();
 
}


  



final todoController = TextEditingController();
  final todoController2 = TextEditingController();
  saveTodo() async {
    if (todoController.text.isNotEmpty) {
      todoList.add(todoController.text);

      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setStringList('todo_list', todoList);
      todoController.clear();
    }
    if (todoController2.text.isNotEmpty) {
      todoList2.add(todoController2.text);
      SharedPreferences preferences = await SharedPreferences.getInstance();
      preferences.setStringList("todo_list2", todoList2);
      todoController2.clear();
    }
    notifyListeners();
  }
}
 