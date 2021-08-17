import 'package:flutter/material.dart';
import 'package:telegram_dart/detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Telegram'),
        backgroundColor: Colors.green[800],
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
        backgroundColor: Colors.green[600],
      ),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          final time = DateTime.now();
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                'https://ichef.bbci.co.uk/news/976/cpsprodpb/12A9B/production/_111434467_gettyimages-1143489763.jpg',
              ),
            ),
            title: Text('This is title $index'),
            subtitle: Text('Subtitle ${index % 5}'),
            trailing: Text('${time.hour}:${time.minute}'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    url:
                        'https://ichef.bbci.co.uk/news/976/cpsprodpb/12A9B/production/_111434467_gettyimages-1143489763.jpg',
                    title: 'Title $index',
                    subtitle: 'Subtitle $index',
                  ),
                ),
              );
            },
          );
        },
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text("Telegram Header"),
            ),
            ListTile(
              title: Text("Item 1"),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text("Item 2"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
