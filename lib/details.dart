import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'logic.dart';

class details extends StatefulWidget {
  var todo_list;
  var todo_list2;
 
  details(this.todo_list, this.todo_list2);

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    final datas2 = Provider.of<data>(context);
    return Scaffold(
      backgroundColor: Color(0xff212227),
      body: SafeArea(
        child: Container(
          height: 800.h,width: 400.w,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(children: [
                
                SizedBox(
                  height: 35.h,
                ),
                Container(
                 
                  decoration: BoxDecoration(
                      color: Color(0xff31343b),
                      borderRadius: BorderRadius.circular(5)),
                  
                  
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8,left: 8,right: 5,bottom: 8),
                    child: Row(
                      children: [
                        
                           
                             Expanded(
                               child: Text(
                                    widget.todo_list,
                                    style: TextStyle(
                                        color: Color(0xffC5817D), fontSize: 30.sp),
                                  ),
                             ),
                        Text(datas2.dates.toString()
                            ,
                              style: TextStyle(
                                  color: Color(0xffC5817D), fontSize: 15.sp),
                            ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 500.h,width: 400.w,
                  decoration: BoxDecoration(
                      color: Color(0xff31343b),
                      borderRadius: BorderRadius.circular(5)),
                 
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Text(
                        widget.todo_list2,
                        style: TextStyle(color: Colors.white, fontSize: 17.sp),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
