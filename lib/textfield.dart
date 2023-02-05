import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'logic.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Text2 extends StatefulWidget {
  @override
  State<Text2> createState() => _Text2State();
}

class _Text2State extends State<Text2> {
  @override
  Widget build(BuildContext context) {
    final valu = Provider.of<data>(context);
    return Scaffold(
      backgroundColor: Color(0xff212227),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Container(
            height: 700.h,
            width: 400.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80.h,
                ),
                Container(
                  height: 40.h,
                  width: 400.w,
                  child: Text(
                    "Add your Note",
                    style: TextStyle(
                        color: Color(0xffC5817D),
                        fontSize: 35.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 60.h,
                  width: 400.w,
                  
                  decoration: BoxDecoration(color: Color(0xff31343b),
                      
                      borderRadius: BorderRadius.circular(15),),
                  child: TextField(
                    
                   
                    style: TextStyle(color: Color(0xffC5817D),fontSize: 17.sp),
                    controller:  valu.todoController,
                    decoration: InputDecoration(
                        hintText: "Title of your note",
                        hintStyle: TextStyle(color: Color(0xffC5817D)),
                        border:OutlineInputBorder(borderRadius:BorderRadius.circular(15),borderSide: BorderSide(color: Color(0xffC5817D))),
                       ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 150.h,
                  width: 400.w,
                  decoration: BoxDecoration(
                    color: Color(0xff31343b),
                      
                      borderRadius: BorderRadius.circular(15),),
                  child: TextField(
                    
                    expands: true,
                    maxLines: null,
                    style: TextStyle(color: Colors.white),
                    controller:  valu.todoController2,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius:BorderRadius.circular(15) ),
                        hintText: "Discription of your note",
                        hintStyle: TextStyle(color: Color(0xffC5817D)),
                       )
                        
                        ),
                  ),
                
                SizedBox(
                  height: 40.h,
                ),
                Center(
                  child: SizedBox(
                    height: 50.h,
                    width: 100.w,
                    child: ElevatedButton(
                      
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xffC5817D)),
                      onPressed: () {
                        valu.saveTodo();
                       
          valu.savedate();
                        
                      },
                      child: Icon(Icons.done,size: 40.sp,),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
