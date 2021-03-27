import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ListView',
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: ListView(
          children: [
            colorBlock(
              text: 'Red',
            ),
            colorBlock(
              text: 'Orange',
            ),
            colorBlock(
              text: 'Yellow',
            ),
            colorBlock(
              text: 'Green',
            ),
            colorBlock(
              text: 'Blue',
            ),
            colorBlock(
              text: 'Indigo',
            ),
            colorBlock(
              text: 'Violet',
            ),
          ],
        ),
      ),
    );
  }

  Widget colorBlock({
    @required String text,
  }) {
    Color color = getColorFromString(
      text: text,
    );
    return Container(
      height: 100,
      color: color,
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Color getColorFromString({@required String text}) {
    switch (text.toLowerCase()) {
      case 'red':
        return Colors.red;
        break;
      case 'orange':
        return Colors.orange;
        break;
      case 'yellow':
        return Colors.yellow;
        break;
      case 'green':
        return Colors.green;
        break;
      case 'blue':
        return Colors.blue;
        break;
      case 'indigo':
        return Colors.indigo;
        break;
      case 'violet':
        return Colors.purple;
        break;
      default:
        return Colors.red;
        break;
    }
  }
}
