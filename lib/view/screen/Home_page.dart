import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  HomePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:  const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text('PixelsCo.',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
        ),
        actions:  const [
          Padding(
            padding:  EdgeInsets.only(right: 35),
            child: Icon(Icons.shopping_bag_outlined,size: 25,color: Colors.white,),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15,left: 15),
            child: Container(height: 200,width: 350,
            child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 20),
                        Text('New Vintage\nCollection',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
                        SizedBox(height: 10),
                        Container(height: 40,width: 130,
                          child: Center(child: Text('Explore now',style: TextStyle(color: Colors.white,fontSize: 20),)),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),gradient: LinearGradient(colors: [Color(0xff3a3e46),Color(0xff25282d)])),)
                      ],
                    ),
                    Image.asset('assets/image 276.png',fit: BoxFit.fill,)
                  ],

                ),
              ),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),gradient: LinearGradient(colors: [Color(0xff3a3e46),Color(0xff25282d)])),
            ),
          ),
          const SizedBox(height: 10),
         const Text('     Popular',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
         Expanded(
           child: GridView.builder(
             itemCount: 10,
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
               itemBuilder: (context, index) =>  Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 15),
                       child: Card(
                         child: Container(height: 260, width: 200,
                           decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                               gradient: const LinearGradient(
                                   colors: [Color(0xff3a3e46), Color(0xff25282d)])),
                           child: Column(
                             children: [
                               const Padding(
                                 padding:  EdgeInsets.only(left: 10, top: 10),
                                 child: Row(
                                   children: [
                                     Icon(Icons.star, size: 20, color: Colors.yellow,),
                                     Text(' 4.5', style: TextStyle(color: Colors.white,
                                         fontWeight: FontWeight.bold,
                                         fontSize: 18),),
                                   ],
                                 ),
                               ),
                               const SizedBox(height: 5),
                               Center(child: Container(height: 80, width: 80,
                                 child: Image.asset('assets/2.png', fit: BoxFit.cover,),
                               )
                               ),
                               const Padding(
                                 padding: EdgeInsets.only(right: 13),
                                 child: Text('SONY 200MM zoom', style: TextStyle(color: Colors.white,
                                     fontWeight: FontWeight.bold,
                                     fontSize: 20),),
                               ),SizedBox(height: 5),
                               Row(
                                 children: [
                                   const Text("  16000", style: TextStyle(color: Colors.white,
                                       fontWeight: FontWeight.bold,
                                       fontSize: 20),),
                                   const SizedBox(width: 80),
                                   Container(height: 30, width: 20,
                                     child: Icon(
                                       // ya fir github pe dbhe kar deta hu

                                       Icons.arrow_forward, size: 20, color: Colors.black87,),
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(10),
                                         gradient: const LinearGradient(
                                             colors: [Color(0xff3a3e46), Color(0xff25282d)])),
                                   )
                                 ],
                               ),
                             ],
                           ),
                         ),
                       ),
                     )
                   ]
               ),),
         )
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar[],
    );
  }
}
