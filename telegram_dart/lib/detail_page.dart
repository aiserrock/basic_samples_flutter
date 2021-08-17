import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String url;
  final String subtitle;
  final String title;

  const DetailPage({
    Key? key,
    required this.url,
    required this.subtitle,
    required this.title,
  }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(widget.url),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.title),
                  Text(
                    widget.subtitle,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white.withAlpha(150),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          PopupMenuButton(
              icon: Icon(Icons.more_vert),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text("First"),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Text("Second"),
                  value: 2,
                )
              ]
          ),
        ],
      ),
      body: ListView(
        reverse: true,
        padding: EdgeInsets.symmetric(vertical: 16),
        children: [
          getCard(
            'Flutter widgets are built using a modern framework that takes inspiration from React. The central idea is that you build your UI out of widgets. Widgets describe what their view should look like given their current configuration and state. When a widget’s state changes, the widget rebuilds its description, which the framework diffs against the previous description in order to determine the minimal changes needed in the underlying render tree to transition from one state to the next.',
          ),
          getCard(
            'epresent the underlying RenderObject, which computes and describes the geometry of the widget.',
          ),
          getCard(
            'Row, ColumnThese flex widgets let you create flexible layouts in both the horizontal (Row) and vertical (Column) directions. The design of these objects is based on the web’s flexbox layout model.',
          ),
          getCard(
            'Instead of being linearly oriented (either horizontally or vertically), a Stack widget lets you place widgets on top of each other in paint order. You can then use the Positioned widget on children of a Stack to position them relative to the top, right, bottom, or left edge of the stack. Stacks are based on the web’s absolute positioning layout model.',
          ),
          getCard(
            'Instead of being linearly oriented (either horizontally or vertically), a Stack widget lets you place widgets on top of each other in paint order. You can then use the Positioned widget on children of a Stack to position them relative to the top, right, bottom, or left edge of the stack. Stacks are based on the web’s absolute positioning layout model.',
          ),
        ],
      ),
    );
  }

  Widget getCard(String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              'https://boldoutline.in/wp-content/uploads/2019/08/Cover-69.jpg',
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 20,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(text),
              ),
            ),
          ),
        )
      ],
    );
  }
}
