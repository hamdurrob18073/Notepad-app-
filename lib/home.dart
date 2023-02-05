
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todo/details.dart';

import 'package:todo/textfield.dart';
import 'logic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodoApp extends StatefulWidget {

  @override
  _TodoAppState createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
 
  @override
  Widget build(BuildContext context) {
    final datas = Provider.of<data>(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff212227),
        appBar: AppBar(
          backgroundColor: Color(0xff212227),
          centerTitle: true,
          elevation: 0,
          title: Text(
            'Your Note',
            style: TextStyle(color: Color(0xffC5817D), fontSize: 35.sp),
          ),
        ),
        body:
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 800.h,width: 400.w,
              
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20.h,
                  ),
                  Expanded(
                child: FutureBuilder(
              future: datas.getSavedTodos(),
              builder: (context, index) {
                return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                     
                      mainAxisExtent: 200.h,
                    ),
                    itemCount: datas.todoList.length,
                    itemBuilder: (context, index) {
                      return 
                         SingleChildScrollView(
                           child: GridTile(
                              child: GestureDetector(
                                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>details(datas.todoList[index],datas.todoList2[index]) )),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xff31343b),
                                      borderRadius: BorderRadius.circular(10.sp)),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8, right: 5, top: 5),
                                        child: Container(
                                         
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  datas.todoList[index],
                                                  style: TextStyle(
                                                      color: Color(0xffC5817D),
                                                      fontSize: 25.sp,fontWeight: FontWeight.bold),
                                                ),
                                              ),
                                              SizedBox(width: 10.h,),
                                              IconButton(onPressed: (){
                                                showDialog(context: context, builder: (BuildContext context){
                                                  return AlertDialog(
                                                    backgroundColor: Color(0xff31343b),
                                                    title: Text("Delete note",style: TextStyle(color: Colors.white),),
                                                    content: Text("It will delete parmanently",style: TextStyle(color: Colors.white)),
                                                    actions: <Widget>[
                                                       ElevatedButton(style: ElevatedButton.styleFrom(primary: Color(0xffC5817D)),onPressed: (){Navigator.pop(context);}, child: Text("No",style: TextStyle(color: Colors.white))),
                                                                ElevatedButton(style: ElevatedButton.styleFrom(primary: Color(0xffC5817D)),onPressed: (){datas.delete(index);Navigator.pop(context);}, child: Text("Yes",style: TextStyle(color: Colors.white))),
                                                    ],
                                                  );
                                                });
                                              },
                                             icon: Icon(Icons.delete,color: Colors.white,size: 20.sp,)),
                                            
                                            
                                            
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 8, top: 2, right: 5, bottom: 10),
                                        child: Container(
                                          child: Text(
                                            datas.todoList2[index],
                                            style: TextStyle(
                                                color: Colors.white, fontSize: 15.sp),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            
                                                   ),
                         );
                      
                    });
              },
            )),




                 
                  
                 
                  
                ],
              ),
            ),
          ),
        
        floatingActionButton: FloatingActionButton(backgroundColor: Color(0xffC5817D),onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>Text2(),
                          ));
                    },child: Icon(Icons.add,color:Colors.white),),
      ),
    );
  }
}
