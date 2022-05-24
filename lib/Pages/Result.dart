import 'package:flutter/material.dart';
import 'package:lab1/Models/ResultsAnswers.dart';

/*
class Result extends StatelessWidget {
  final List list;
  Result({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text('Опитування'),
          centerTitle: true,
        ),
        body:
        Row(
          //crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Card(
                        child: ListTile(
                          title: Text(list[index], textAlign: TextAlign.center,),
                        ),

                      ),
                    );
                  },
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  Navigator.pushReplacementNamed(context, '/');
                },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
                  ),
                  child: Text('Повернутися на головну'),)
              ],
            )
          ],
        )
    );
  }
}
*/


/*

class Result extends StatelessWidget {
  final List<ResultAnswer> list;
  final String user;
  Result({Key? key, required this.list, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Опитування: Нова Пошта'),
        centerTitle: true,
      ),
      body: Column(
          children: [
            Container(
                color: Colors.white,
                width: double.infinity,
                height: 100,
                child: Center(child: Text('Ім\'я резидента: ' + user),)
            ),
            //Padding(padding: EdgeInsets.only(top: 100)),
            ListView.builder(
              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  child: Card(
                    child: ListTile(
                      title: Text(list[index].questionNumber),
                      subtitle: Text('ВІДПОВІДЬ: ' + list[index].answerOption),
                    ),

                  ),
                );
              },
            ),
          ]
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/');
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
          //padding: Padding(padding: EdgeInsets.only(20)),
        ),
        child: Text('Повернутися на головну'),
      ),
    );
  }
}
 */

class Result extends StatelessWidget {
  final List<ResultAnswer> list;
  final String user;
  Result({Key? key, required this.list, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade50,
      appBar: AppBar(
        title: Text('Опитування: Нова Пошта'),
        centerTitle: true,
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 1,
        itemBuilder: (BuildContext context, int i) {
          return Column(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                child: Card(
                    color: Colors.white,
                    child: Center(child: Text('Ім\'я резидента: ' + user, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),)
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: Card(
                      child: ListTile(
                        title: Text(list[index].questionNumber),
                        subtitle: Text('ВІДПОВІДЬ: ' + list[index].answerOption),
                      ),
                    ),
                  );
                  },
              ),
              const Padding(padding: EdgeInsets.only(top: 50),),
            ],
          );
        },
    ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/');
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrangeAccent),
          //padding: Padding(padding: EdgeInsets.only(20)),
        ),
        child: Text('Повернутися на головну'),
      ),
    );
  }
}