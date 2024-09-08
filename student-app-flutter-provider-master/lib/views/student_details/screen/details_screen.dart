

// ignore_for_file: unnecessary_null_comparison

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:student_app_provider/views/student_details/widget/student_details.dart';
import 'package:student_app_provider/views/student_details/widget/student_heading.dart';

class StudentProfile extends StatelessWidget {
  final String name;
  final String age;
  final String std;
  final String place;
  final String image;

  const StudentProfile(
      {super.key,
      required this.name,
      required this.age,
      required this.std,
      required this.place,
      required this.image});

  @override
  Widget build(BuildContext context) {
   
        Widget imageProfileWidget = image != null
        ? ClipOval(
            child:  Image.file(File(image),width: 100,height: 100,fit: BoxFit.cover,),
          )
        : Container();

    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          title: Text(name.toUpperCase(), style: const TextStyle(fontSize: 25,color: Colors.black ,fontFamily: 'Raleway-VariableFont_wght',fontWeight: FontWeight.bold),),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0), 
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50,),
              imageProfileWidget,
              const SizedBox(height: 25,),
               const Divider(),
               const SizedBox(height: 25,),
               const TSectionDetail(title: 'Personal Details',),
                const SizedBox(height: 10,),
                ProfileMenu(title: 'Name :',value:name ,),
                ProfileMenu(title: 'Age :',value:age ,),
                ProfileMenu(title: 'Plae :',value:place ,),
                ProfileMenu(title: 'Standard :',value:std ,),
            ],
          ),
        ),
      ),
    );
  }
}
