import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;
  final TextEditingController t1 = new TextEditingController();
  final TextEditingController t2 = new TextEditingController();
  void doAdd(){
      setState((){
        num1 = int.parse(t1.text);
        num2 = int.parse(t2.text);
        sum = num1 + num2;
      });
  }
   void doSub(){
      setState((){
        num1 = int.parse(t1.text);
        num2 = int.parse(t2.text);
        if (num1>num2){sum = num1 - num2;}
        else{sum = num2 - num1;}
      });
  }
   void doMul(){
      setState((){
        num1 = int.parse(t1.text);
        num2 = int.parse(t2.text);
        sum = num1 * num2;
      });
  }
    void doDiv(){
      setState((){
        num1 = int.parse(t1.text);
        num2 = int.parse(t2.text);
        sum = num1 ~/ num2;
      });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
            title: new Text("Calculator"),
        ),
        body: new Container(
            padding: const EdgeInsets.all(30.0),
            child: new Column(
                mainAxisAlignment : MainAxisAlignment.center,
                children: <Widget>[
                    new Text(
                        "Output : $sum",
                        style: new TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,  color: Colors.red, )
                    ),
                    new Padding(
                       padding: const EdgeInsets.only(top:20.0), 
                    ),
                    new TextField(
                        keyboardType: TextInputType.number,
                        decoration: new InputDecoration(
                            hintText: "Enter number 1"
                        ),
                        controller: t1,
                    ),
                    new TextField(
                        keyboardType: TextInputType.number,
                        decoration: new InputDecoration(
                            hintText: "Enter number 2"
                        ),
                        controller: t2,
                    ),
                    new Padding(
                       padding: const EdgeInsets.only(top:30.0), 
                    ),
                    new Row(
                        mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                            new MaterialButton(
                                child: new Text("ADD", style:new TextStyle(color:Colors.white)),
                                color: Colors.red,
                                onPressed: doAdd,
                            ),
                            new MaterialButton(
                                child: new Text("SUB", style:new TextStyle(color:Colors.white)),
                                color: Colors.red,
                                onPressed: doSub,
                            ),
                        ],
                    ),
                    new Padding(
                       padding: const EdgeInsets.only(top:20.0), 
                    ),
                    new Row(
                        mainAxisAlignment : MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                            new MaterialButton(
                                child: new Text("MUL", style:new TextStyle(color:Colors.white)),
                                color: Colors.red,
                                onPressed: doMul,
                            ),
                            new MaterialButton(
                                child: new Text("DIV", style:new TextStyle(color:Colors.white)),
                                color: Colors.red,
                                onPressed: doDiv,
                            ),
                        ],
                    )
                ],
            ),
        ),
    );
  }
}