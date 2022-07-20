
import 'package:ecommerce/features/home/presentation/screen/details_screen.dart';
import 'package:ecommerce/features/home/presentation/screen/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../config/routes/app_routes.dart';
import '../../../../core/utils/assets_manger.dart';
import '../cubit/cubit.dart';
import '../states/states.dart';
class HomeScreenLayout   extends StatefulWidget {
   HomeScreenLayout ({Key? key}) : super(key: key);

  @override
  State<HomeScreenLayout> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenLayout> {
// late final String? assets;
// late final String namePrand ;
// late final double price;


Widget _itemChose(
    {
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
changePage({context,Routes? routes})
{
  return  MaterialPage(child:Profile() );
}

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit,HomeState>(builder:(context,state){
     var cubit=HomeCubit.get(context);
      return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: Padding(
            padding: EdgeInsets.all(5.0),
            child: InkWell(onTap:(){
            },child: CircleAvatar(radius: 100,backgroundColor: Colors.grey,backgroundImage: NetworkImage('https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/289931748_3238108543129765_7827806816581937684_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=BT3XW2m71UQAX865lMS&_nc_ht=scontent.fcai20-3.fna&oh=00_AT-y37xkhfWcjEiY___7URCBtkS0dv4JTm__4ovRy7Zhnw&oe=62D8D9AF'),)),
          ),
          actions: [
            IconButton(onPressed: (){
              Navigator.pushNamed(context, Routes.messageScreen);
            },  icon:const Icon(Icons.message) ,color: Colors.grey, ),
            IconButton(onPressed: (){},  icon:const Icon(Icons.notifications) ,color: Colors.grey)
          ],
        ),
        body: HomeCubit.get(context).screens[HomeCubit.get(context).currentIndex],
        bottomNavigationBar:BottomNavigationBar(
          currentIndex: HomeCubit.get(context).currentIndex,

          onTap: (index){
            // cubit.changeBottomNavBar(index);
            HomeCubit.get(context).changeBottomNavBar(index);
          },
          backgroundColor: Colors.white,
          elevation: 20,
          fixedColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home,),label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search,),label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,),label: 'cart'),
            BottomNavigationBarItem(icon: Icon(Icons.person,),label: 'Profile'),

          ],
        ) ,
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(45),
                                child: CircleAvatar(radius: 45,child: Image.network(width: 87,height: 90,'https://scontent.fcai20-3.fna.fbcdn.net/v/t39.30808-6/289931748_3238108543129765_7827806816581937684_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=BT3XW2m71UQAX865lMS&_nc_ht=scontent.fcai20-3.fna&oh=00_AT-y37xkhfWcjEiY___7URCBtkS0dv4JTm__4ovRy7Zhnw&oe=62D8D9AF')),
                              )
                            ],
                          ),
                          const SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Abdallah',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                              const SizedBox(width: 20,),
                              Text('Abdo@gmail.com',style: TextStyle(color: Colors.grey[500],fontSize: 17,fontWeight: FontWeight.bold),),
                              const SizedBox(width: 20,),
                              TextButton(onPressed: (){}, child: const Text('Edit Profile'))

                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ListTile(title: const Text('Home'),leading: IconButton(onPressed: (){
                        Navigator.pushNamed(context, Routes.homeScreen) ;
                      },icon: const Icon(Icons.home_outlined),color: Colors.black,),),
                      ListTile(title: const Text('Message'),leading: IconButton(onPressed: (){
                        Navigator.pushNamed(context, Routes.messageScreen);
                      },icon: const Icon(Icons.message_outlined),color: Colors.black),),
                      ListTile(title: const Text('Categories'),leading: IconButton(onPressed: (){},icon: const Icon(Icons.menu_book_rounded),color: Colors.black),),
                      ListTile(title: const Text('My orders'),leading: IconButton(onPressed: (){
                        Navigator.pushNamed(context, Routes.myCartScreen);
                      },icon: const Icon(Icons.shopping_cart_outlined),color: Colors.black),),
                      ListTile(title: const Text('Notifications'),leading: IconButton(onPressed: (){},icon: const Icon(Icons.notifications_active_rounded),color: Colors.black),),
                      ListTile(title: const Text('Log out'),leading: IconButton(onPressed: (){},icon: const Icon(Icons.logout),color: Colors.black),),
                     const SizedBox(height: 220,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          IconButton(onPressed: (){}, icon:const  ImageIcon(AssetImage(ImageAssets.google))),
                          const SizedBox(width: 10,),
                          IconButton(onPressed: (){}, icon:const  ImageIcon(AssetImage(ImageAssets.facebook))),
                          const SizedBox(width: 10,),
                          IconButton(onPressed: (){}, icon:const  ImageIcon(AssetImage(ImageAssets.twitter))),
                        ],
                      )


                    ],
                  ),
                ),


              ],
            ),
          ),
        ),
      );
    }, listener: (context,state){});
  }
}

