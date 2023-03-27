import 'package:flutter/material.dart';
import 'homepage.dart';
import 'Search_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(
        iconTheme: IconThemeData(color: Colors.pink),
        appBarTheme: AppBarTheme(
          elevation: 1,
          color: Colors.white,
          iconTheme: IconThemeData(color: Colors.pink),
        ),
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  int CurrentPage = 0;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage == 1 ? SearchPage() : homepage(),
      bottomNavigationBar: BottomAppBar(
          child: Row(
        children: [
          IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 0;
                });
              },
              icon: Icon(Icons.home,
                  color: currentPage == 1
                      ? Color.fromRGBO(203, 73, 101, 1)
                      : Color.fromRGBO(40, 40, 40, 1))),
          Spacer(),
          IconButton(
              onPressed: () {
                setState(() {
                  currentPage = 1;
                });
              },
              icon: Icon(Icons.search,
                  color: currentPage == 1
                      ? Color.fromRGBO(203, 73, 101, 1)
                      : Color.fromRGBO(40, 40, 40, 1))),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.ondemand_video)),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.card_travel)),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.person)),
        ],
      )),
    );
  }
}
