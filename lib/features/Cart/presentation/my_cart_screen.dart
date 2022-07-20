import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../config/routes/app_routes.dart';
import '../../../core/utils/assets_manger.dart';
import '../../../core/widget/custom_button.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({Key? key}) : super(key: key);

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  var key=GlobalKey();
  int index=4;
 //  late final String? assets;
 // late    final String? name;
 // late final double? price;
 //   late final   int? count;
 Widget itemCart(
  {
    BuildContext? context,
  String? assets,
    String? name,
    double? price,
    int? count,
    GlobalKey? key
}
      ){
    return Dismissible(
      background:Container(decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.horizontal(left: Radius.circular(15)),
        image: DecorationImage(

          fit: BoxFit.fitHeight,
            image: AssetImage(ImageAssets.deleticon) ,
        )
      ),),

      onDismissed: (direction){
        setState(() {
          index--;
        });
      },
      key: ValueKey(index),
      child: Container(
        width: 337,
        height: 92,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular( 15),
         color: Color(0xffDDDDDD),
       ),
        child: Row(
          children: [
            Image.asset(assets!,),
            Spacer(flex: 1,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('$name',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Text('$price',style: TextStyle(color: Color(0xff2196F3),fontSize: 17,fontWeight: FontWeight.bold),)
              ],
            ),
            Spacer(
              flex: 1,
            ),
            Container(
              color: Colors.white,
              height: 46,
              width: 87,
              child: Row(
               crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('\-',style: TextStyle(fontSize: 35),) ,
                  SizedBox(width: 10,),
                  Text('2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Color(0xff2196F3)),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.add))

                ],
              ),
            ),
            Spacer(flex: 1,)
          ],
        ),
      ),
    );
  }
  // final items=List<Widget>.generate(4, (index){
  //   return itemCart();
  // } ) ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text('Mr Carts',style: TextStyle(color: Colors.black ,fontSize: 24,fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon: Icon(Icons.arrow_back_ios),color: Colors.black,),
        actions: [
          IconButton(onPressed: (){},  icon: ImageIcon(AssetImage(ImageAssets.cartIcon),color: Colors.black,))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ListView.separated(physics: ScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context,index)=> itemCart(key: key,price: 99.99,assets: ImageAssets.nike,count: 2,name: 'Nike'), separatorBuilder: (context,index)=>const  SizedBox(height: 15,), itemCount: index),
                
                Row(
                  children: [
                    ElevatedButton(onPressed: (){
                      Navigator.pop(context);
                    }, style: ElevatedButton.styleFrom(primary: const Color(0xffD1E9FC)) , child:const Text('cancle',style: const TextStyle(color: Colors.black,fontSize: 20),)),
                    const Spacer(
                      flex: 1,
                    ),

                    CustomButton(style: const TextStyle(color: Colors.white,fontSize: 30),action: 'check out',onPressed: (){
                      Navigator.pushNamed(context, Routes.checkoutScreen);
                    },width: 200,)

                  ],
                )
          ],
        ),
      ),
    );
  }
}
