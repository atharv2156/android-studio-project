import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'grid List';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(100, (index){
            return Center(
                child: Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.headline5,
                )
            );
          }),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                ), child: Text('drawer Header'),
              ),
              ListTile(
                title: const Text('option1'),
                onTap: (){
                  Navigator.pop(context);
                } ,
              ),
              ListTile(
            title: const Text('option2'),
                onTap: (){
              Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('option3'),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
