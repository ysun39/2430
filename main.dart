import 'package:flutter/material.dart';
import 'res/listData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Shoe shop')),
        body: LayoutDemo(),
        drawer:HomePage() ,
    ),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  List<Widget> _getListData() {
    var tempList = listData.map((value) {
      return Container(
        child: Column(
          children: <Widget>[
            Image.network(
              value['imageUrl'],
              height: 120,
            ),
            SizedBox(
              height: 10,
            ),
            Text(value['name']),
            Text(
              value['prize'],
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.grey, width: 1)),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      padding: EdgeInsets.fromLTRB(10, 10, 10, 60),
      crossAxisCount: 2,
      children: this._getListData(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int countNum = 0;
  int moneyNum=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 50),
          Chip(
            label: Text('you have chosen ${this.countNum} things'),
          ),
          Chip(
            label:Text('total for ${this.moneyNum}￡'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                this.countNum++;
                this.moneyNum+=40;
              });
            },
            child: Text('Put Item No. 1 into the car'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                this.countNum++;
                this.moneyNum+=50;
              });
            },
            child: Text('Put Item No. 2 into the car'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                this.countNum++;
                this.moneyNum+=20;
              });
            },
            child: Text('Put Item No. 3 into the car'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                this.countNum++;
                this.moneyNum+=15;
              });
            },
            child: Text('Put Item No. 4 into the car'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                this.countNum++;
                this.moneyNum+=50;
              });
            },
            child: Text('Put Item No. 5 into the car'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                this.countNum++;
                this.moneyNum+=100;
              });
            },
            child: Text('Put Item No. 6 into the car'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                this.countNum++;
                this.moneyNum+=60;
              });
            },
            child: Text('Put Item No. 7 into the car'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                this.countNum++;
                this.moneyNum+=55;
              });
            },
            child: Text('Put Item No. 8 into the car'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                this.countNum++;
                this.moneyNum+=60;
              });
            },
            child: Text('Put Item No. 9 into the car'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                this.countNum++;
                this.moneyNum+=60;
              });
            },
            child: Text('Put Item No. 10 into the car'),
          ),
        ],
      ),
    );
  }
}
