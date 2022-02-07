import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Utils{
   static showPickImageAlert(BuildContext context,
    { required Function(File) onPickImage }
   ){
      ImagePicker imagePicker= ImagePicker();
      return showDialog(
        context: context, 
        builder: (BuildContext context){
           return  AlertDialog(
              title:const Center(
                child: Text("Select Image",
                  style:  TextStyle(
                    fontSize: 20,
                     color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              content: SingleChildScrollView(
                 child: ListBody(
                    children: [
                      InkWell(
                         onTap: ()async{
                            await imagePicker.pickImage(source: ImageSource.camera)
                            .then((value){
                               if(value !=null){
                                   onPickImage(File(value.path));
                               }
                            });
                         },
                         child:const Center(
                           child: Text("From image",
                            style: TextStyle(
                              fontSize: 16,
                               fontWeight: FontWeight.w500
                            ),
                           ),
                         ),
                      ),
                      const SizedBox(height: 20,),
                       InkWell(
                         onTap: ()async{
                            await imagePicker.pickImage(source: ImageSource.gallery)
                            .then((value){
                               if(value !=null){
                                   onPickImage(File(value.path));
                               }
                            });
                         },
                         child:const Center(
                           child: Text("From gallery",
                            style: TextStyle(
                              fontSize: 16,
                               fontWeight: FontWeight.w500
                            ),
                           ),
                         ),
                      ),
                    ],
                 ),       
              ),
              actions: [
                TextButton(onPressed: (){Navigator.pop(context);}, child:const Center(
                  child: Text(" Cancel",
                   style: TextStyle(fontSize:  16, color: Colors.red),
                  ),
                ))
              ],
           );
        }
        
        );
   }
}