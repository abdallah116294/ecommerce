import 'package:flutter/material.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../../core/widget/custom_button.dart';

class ProductDetailsScreen  extends StatefulWidget {
    ProductDetailsScreen({Key? key, this.brandName, this.price, this.assets}) : super(key: key);
 final String? brandName;
 final double? price;
 final String? assets;
  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
 Color unselecteditem=Colors.grey;

// Color unSelecteditem=Colors.grey;
  bool isSelected=false;
   Widget sizedItem(
  {
    int? size
}
       )
   {
     return GestureDetector(
       onTap: ()
       {
         print('object');
         setState(){


         }


       },
       child: Chip(label: Text('$size',style: const TextStyle(fontSize: 20),),
         backgroundColor:Colors.grey,
         shape:const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))) ,
        ),
     );
    }
 Widget ListReviews()
 {
   return Row(
     children: [
       const CircleAvatar(
         backgroundColor: Color(0xff322BE5),
         radius: 30,
         child: Text('OB',style: TextStyle(color: Colors.white),),
       ),
       const SizedBox(
         width: 20,
       ),
       Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Row(

            children: [
              const Text('****' ,style: const TextStyle(color: const Color(0xffFF6969),fontSize: 35),),
              Text('*',style: TextStyle(color: Colors.grey[300],fontSize: 35),)
            ],
           ),
           const Text('Abdallah mohamed',style: const TextStyle(color: Colors.black,fontSize: 15),)
         ],
       )

     ],
   );
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('${widget.brandName}',style: const TextStyle(color: Colors.black),),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon: const Icon(Icons.arrow_back_ios,color: Colors.blue,),),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('\$ ${widget.price}',style: const TextStyle(color: Colors.black),),
              const SizedBox(
                width: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(200,50, 43, 229),
                  borderRadius: BorderRadius.circular(15),

                ),
                child: const Text('\* 4.9'),
              ),
            ],
          ),
          Image(image: AssetImage(widget.assets!),height: 180,width: double.infinity,),
          const SizedBox(height: 20,),
          DefaultTabController(
              length: 3, child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
            Container(

              child:  const TabBar(
                indicatorColor: Colors.transparent,
                labelStyle: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(text: 'Product'),
                Tab(text: 'Details',),
               Tab(text: 'Reviews',),

              ],),

            ),
            Container(
              height: 400,
              child:  TabBarView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                       const Text('Select Color:',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                     const  SizedBox(
                          height: 30,
                        ),
                      Row(

                        children: [
                          CircleAvatar(
                            radius: 20,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue,
                              ),

                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          CircleAvatar(
                            radius: 20,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.deepOrange,
                              ),

                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          CircleAvatar(
                            radius: 20,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.red,
                              ),

                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          CircleAvatar(
                            radius: 20,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black,
                              ),

                            ),
                          ),
                        ],
                      ),
                        const  SizedBox(
                          height: 40,
                        ),
                        const Text('Size',style: const TextStyle(color: Colors.black,fontSize:20,fontWeight: FontWeight.bold ),),
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            sizedItem(size: 40),
                            sizedItem(size: 41),
                            sizedItem(size: 42),
                            sizedItem(size: 43),
                            sizedItem(size: 44),

                          ],
                        ),
                        const  Spacer(
                          flex: 1,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color:  Colors.lightBlueAccent,
                                borderRadius: BorderRadius.horizontal(left: Radius.circular(15))
                                    
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                    child: GestureDetector(child: const Text('\-',style: const TextStyle(fontSize: 30),)),
                                  ),
                                   const SizedBox(
                                    width: 5,
                                  ),
                                   const Text('2',style: TextStyle(fontSize: 40),),

                                ],
                              ),
                            ),
                            Container(decoration: const BoxDecoration(
                              borderRadius: const BorderRadius.horizontal(right:const Radius.circular(15.0)),
                              color:  Color(0xff2196F3),
                            ),child: IconButton(onPressed: (){}, color: Colors.white, icon: const Icon(Icons.add))),
                            const Spacer(),
                            CustomButton(style: const TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),width: 200,onPressed: (){},action: 'Add to cart',)
                          ],
                        )
                      ],

                    ),
                  ),
                   Column(
                     children: [
                       const Text('Lorem  ipsum dolor sit amet consectetur adipisicing elit. Lorem ipsum dolor sit amet consectetur adipisicing elit. Lorem ipsum dolor sit amet consectetur adipisicing elit.Lorem ipsum dolor sit amet consectetur adipisicing elit.Lorem ipsum dolor sit amet consectetur adipisicing elit.Lorem ipsum dolor sit amet consectetur adipisicing elit.Lorem ipsum dolor sit amet consectetur adipisicing elit.Lorem ipsum dolor sit amet consectetur adipisicing elit.Lorem ipsum dolor sit amet consectetur adipisicing elit.Lorem ipsum dolor sit amet consectetur adipisicing elit.Lorem ipsum dolor sit amet consectetur adipisicing elit.Lorem ipsum dolor sit amet consectetur adipisicing elit.Lorem ipsum dolor sit amet consectetur adipisicing elit.Lorem ipsum dolor sit amet consectetur adipisicing elit.Lorem ipsum dolor sit amet consectetur adipisicing elit.',
                       style: TextStyle(fontSize: 15),),
                       const Spacer(
                         flex: 1,
                       ),

                       Row(
                         children: [
                           ElevatedButton(onPressed: (){
                             Navigator.pop(context);
                           }, style: ElevatedButton.styleFrom(primary: const Color(0xffD1E9FC)) , child:const Text('cancle',style: TextStyle(color: Colors.black,fontSize: 20),)),
                           const Spacer(
                             flex: 1,
                           ),

                           CustomButton(style: const TextStyle(color: Colors.white,fontSize: 30),action: 'Add to Cart ',onPressed: (){},width: 200,)
                         ],
                       )
                     ],
                   ),
                 Padding(
                   padding: const EdgeInsets.all(15.0),
                   child: SingleChildScrollView(
                     child: Column(
                       children: [
                         ListView.separated(physics: const ScrollPhysics(),scrollDirection: Axis.vertical,shrinkWrap: true,itemBuilder: (context,index)=>ListReviews(), separatorBuilder: (context,index)=>const SizedBox(height: 10,), itemCount: 4),
                         const SizedBox(height: 40,),
                         Row(
                           children: [
                             ElevatedButton(onPressed: (){
                               Navigator.pop(context);
                             }, style: ElevatedButton.styleFrom(primary: const Color(0xffD1E9FC)) , child:const Text('cancle',style: const TextStyle(color: Colors.black,fontSize: 20),)),
                             const Spacer(
                               flex: 1,
                             ),

                             CustomButton(style: const TextStyle(color: Colors.white,fontSize: 30),action: 'Add to Cart ',onPressed: (){
                               Navigator.pushNamed(context, Routes.myCartScreen);
                             },width: 200,)
                           ],
                         ),

                       ],
                     ),
                   ),
                 )

                ],
              ),
            )
          ],))


        ],
      ),
    );
  }
}
