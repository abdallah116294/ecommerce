import 'package:flutter/material.dart';

import '../../../../core/utils/assets_manger.dart';

class MessageScreen extends StatelessWidget { 
  const MessageScreen({Key? key}) : super(key: key);
   Widget chatItem()
   {
     return Row(
       children:  [
         CircleAvatar(
           radius: 44,
           child: Text('Ab',style: TextStyle(fontSize: 22),),
         ),
      SizedBox(width: 20,),
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Text('Mohamed Rohiem ',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
             SizedBox(height: 15,),
             Text('Hello ',style: TextStyle(fontSize: 14),),

             
           ],
         ),
         Spacer(),
         Text('9:50 Am')
       ],
     );
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Messages',style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
              const SizedBox(height: 30,),
              Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      padding: const EdgeInsets.all(10),
                      decoration:BoxDecoration(
                        color:Colors.grey[200],
                        borderRadius: BorderRadius.circular(20) ,
                      ),
                      child: Row(
                        children: const [
                          Center(child: Text('Search conversation')),
                          Spacer(),
                          Icon(Icons.search),
                        ],
                      ),
                    ),
                    //const  Icon(Icons.movie_filter_rounded,size: 30,) ,

                  ],
                ),
              ),
              const SizedBox(height: 30,),
              ListView.separated(scrollDirection: Axis.vertical,physics: ScrollPhysics(),shrinkWrap: true,itemBuilder: (context,index)=>chatItem(), separatorBuilder:(context,index)=>Divider(thickness: 0.5,color: Colors.grey,endIndent: 40,indent: 40), itemCount:8)
            ],
          ),
        ),
      ),
    );
  } 
}
