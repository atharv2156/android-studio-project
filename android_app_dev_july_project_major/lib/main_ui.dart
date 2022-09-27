import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('E-Store',style: TextStyle( color: Colors.black),),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios , color: Colors.black,),
            onPressed: (){
              Navigator.pop(context);
            } ,
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search , color: Colors.black,
              ),
              onPressed: (){

              },
            ),
            IconButton(
              icon: const Icon(Icons.shopping_cart , color: Colors.black,),
              onPressed: (){ },
            )
          ],
        ),
        body: GridView.count(
          crossAxisCount: 1,
          children: List.generate(5, (index){
            return Center(
                child: Text(
                  'Product $index',
                  style: Theme.of(context).textTheme.headline5,
                )
            );
          }),
        ),
      ),
    );
  }
}

