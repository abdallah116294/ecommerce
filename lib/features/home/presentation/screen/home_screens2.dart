import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../config/routes/app_routes.dart';
import '../../../../core/utils/assets_manger.dart';
import '../cubit/cubit.dart';
import '../states/states.dart';
import 'details_screen.dart';

class HomeScreenDetails  extends StatelessWidget {
  const HomeScreenDetails({Key? key}) : super(key: key);
  Widget _itemChose(
      {
        required BuildContext context,
        String brandName='',
        String assets='',
        double  price=0,
      }
      )
  {
    return GestureDetector(
      onTap: (){
        //  ProductDetails? details;
        // details!.brandName=brandName;
        // details.assets=assets;
        // details.price=price;

        //Navigator.pushNamed(context,Routes.productDetailsScreen);
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return  ProductDetailsScreen(
            assets: assets,
            brandName: brandName,
            price: price,
          );
        }));
      },
      child: Stack(


          children:[
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                width: 600,
                height: 600,
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: const Color(0xffe7eaf0),
                          blurRadius:15,
                          offset: Offset(0.0, 8)
                      )
                    ],
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffffffff),
                    image: DecorationImage(
                        image:  AssetImage(assets),

                        fit: BoxFit.fill,
                        scale: 20.0
                    )
                ),

                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      Text('$brandName',style:const TextStyle(color: Colors.black,fontSize: 15),maxLines: 1,overflow: TextOverflow.ellipsis,),
                      Text('\$ ${price}',style:const TextStyle(color: Colors.black,fontSize: 15))
                    ],
                  ),
                ),
              ),
            ),
          ]
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>HomeCubit(),
      child: BlocConsumer<HomeCubit,HomeState>(
        listener: (context,state){},
        builder: (context,state){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [

                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, Routes.search) ;
                      },
                      child: Container(
                        width: 300,
                        padding: const EdgeInsets.all(20),
                        decoration:BoxDecoration(
                          color:Colors.grey[200],
                          borderRadius: BorderRadius.circular(20) ,
                        ),
                        child: Row(
                          children: const [
                            Center(child: Text('Search')),
                            Spacer(),
                            Icon(Icons.search),
                          ],
                        ),
                      ),
                    ),
                    //const  Icon(Icons.movie_filter_rounded,size: 30,) ,
                    const InkWell(child: ImageIcon(AssetImage(ImageAssets.filtericon),size: 20,))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Text('Categories',style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  Spacer(),
                  Align(
                    alignment: Alignment.centerRight,
                    child:Text('see All',style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                ],
              ),

              const  SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                primary: false,
                child: Wrap(
                    alignment: WrapAlignment.center,
                    children:[
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children:  [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center
                            ,children:const [
                            Image(image:AssetImage(ImageAssets.beauty), ),
                            Text('Clothes',style: TextStyle(color: Colors.black,fontSize: 18),),
                          ],
                          ),
                          const  SizedBox(
                            width: 5,
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:const  [
                              Image(image: AssetImage(ImageAssets.shose),),
                              Text('Shoes',style: TextStyle(color: Colors.black,fontSize: 18),),
                            ],
                          ),
                          const   SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:const  [
                              Image(image: AssetImage(ImageAssets.apparel),),
                              Text('Beauty',style: TextStyle(color: Colors.black,fontSize: 18),),
                            ],
                          ),
                          const SizedBox(width: 2,),
                          Container(
                            height: 125,
                            width: 125,
                            //padding: EdgeInsets.only(top: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(top: 5),
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    // color: Colors.red,

                                  ),
                                  child: IconButton(onPressed: (){}, icon:const Icon(Icons.arrow_forward_ios)),

                                ),
                                // SizedBox(height: 30,),
                                Spacer(flex: 1,),

                                const Text('see All',style: TextStyle(fontSize:20,color: Colors.blue ),)

                              ],
                            ),
                          )
                        ],

                      ),

                    ]
                ),
              ),
              SizedBox(
                height: 20,
              ),
              const  Text('Popular',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
              const  SizedBox(
                height: 20,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     _itemChose(assets: ImageAssets.nike,namePrand: 'Nike',price: 99.99),
              //     _itemChose(assets: ImageAssets.nike,namePrand: 'Nike',price: 99.99),
              //     _itemChose(assets: ImageAssets.nike,namePrand: 'Nike',price: 99.99),
              //   ],
              // )
              GridView.count(primary: false,mainAxisSpacing: 30, shrinkWrap: true,physics: ScrollPhysics(), crossAxisCount: 3, children: [
                _itemChose(context: context,price: 99.99,brandName: 'Nike',assets: ImageAssets.nike),

                _itemChose(context: context,price: 99.99,brandName: 'Air Max',assets: ImageAssets.blance),

                _itemChose(context: context,price: 99.99,brandName: ' Balance',assets: ImageAssets.nike),
              ],),
              const SizedBox(height: 4,),
              GridView.count(primary: false,mainAxisSpacing: 30, shrinkWrap: true,physics: ScrollPhysics(), crossAxisCount: 3, children: [
                _itemChose(context: context,assets: ImageAssets.nike,price: 99.99,brandName: 'Nike'),

                _itemChose(context: context,price: 99.99,brandName: 'ikl',assets: ImageAssets.blance),

                _itemChose(context: context,price: 99.99,brandName: 'Balance',assets: ImageAssets.nike),
              ],),

            ],
          );
        },
      ),
    );
  }
}
