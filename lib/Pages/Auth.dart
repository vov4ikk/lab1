import 'package:flutter/material.dart';
import 'package:lab1/Pages/Home_page.dart';

class Authorization extends StatefulWidget {
  Authorization({Key? key}) : super(key: key);

  @override
  AuthorizationState createState() => AuthorizationState();
}
class AuthorizationState extends State<Authorization> {
  String _user = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber.shade50,
        appBar: AppBar(
          title: Text('Опитування'),
          centerTitle: true,
        ),
        body: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Для того, щоб розпочати опитування введіть своє ім\'я', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.35,
                child: TextField(

                  onChanged: (String value){
                    _user = value;
                  },
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            ElevatedButton(
                onPressed: (){
                  if(_user != ''){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => HomePage(userName: _user,)));
                  }
                  else {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Попередження!'),
                        content: const Text('Поле для введення імені резидента не може бути пустим!'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK'),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: Text('Далі')
            )
            /*
                ElevatedButton(
                    onPressed: () {
                    showDialog(context: context, builder: (BuildContext context){
                      return AlertDialog(
                        title: Text('Добавити елемент'),
                        content: TextField(
                          onChanged: (String value){
                            userName = value;
                          },
                        ),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                });
                                Navigator.pushReplacementNamed(context, '/auth');
                              },
                              child: Text('Розпочати опитування')
                          ),
                        ],
                      );
                      });
                    },
                    child: Text('Аторизуватися')
                ),
                */

          ],
        )
    );
  }
}




/*
                Text('Enter name'),
                TextField(
                  onChanged: (String value){
                    userName = value;
                  },
                ),

                 */