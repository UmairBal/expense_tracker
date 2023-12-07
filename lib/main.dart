import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Expense Tracker',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
           ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // handle searches
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                //Handle setting opts
              },
            ),
          ],
        ),
        body: CustomScrollView(
          slivers: <Widget>[
            const SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
            ),
            SliverList(delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index){
                  return ListTile(
                    title: Text('item $index'),
                  );
                },
                childCount: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}