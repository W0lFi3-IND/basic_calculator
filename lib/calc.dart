import 'package:flutter/material.dart';
class calc extends StatefulWidget{
  @override
  _calcState createState() => _calcState();
}

class _calcState extends State<calc> {
  double num1,num2,ans=0 ;
  TextEditingController number1 = new TextEditingController();
  TextEditingController number2 = new TextEditingController();
  void add()
  { setState(() {
    num1 = double.parse(number1.text);
    num2 = double.parse(number2.text);
    ans = num1 + num2 ;
    ans.toString();

  });

  }
  void mul(){
    setState(() {
      num1 = double.parse(number1.text);
      num2 = double.parse(number2.text);
      ans = num1 * num2 ;
      ans.toString();
    });

  }
  void div(){
    setState(() {
      num1 = double.parse(number1.text);
      num2 = double.parse(number2.text);
      ans = num1 / num2 ;
      ans.toString();
    });

  }
  void sub(){
    setState(() {
      num1 = double.parse(number1.text);
      num2 = double.parse(number2.text);
      ans = num1 - num2 ;
      ans.toString();
    });

  }
  void mod(){
    setState(() {
      int numa = int.parse(number1.text);
      int numb = int.parse(number2.text);
      ans = num1 % num2 ;
      ans.toString();
    });

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.add), onPressed: null,alignment:Alignment(-30,.3),)
        ],
      ),
      body: new Container(
        child:new Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: new TextField(
                controller: number1,
                keyboardType:TextInputType.numberWithOptions(),
                decoration: new InputDecoration(
                  hintText: "Enter Number 1 "
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: new TextField(
                controller: number2,
                keyboardType:TextInputType.numberWithOptions(),
                decoration: new InputDecoration(
                  hintText: "Enter Number 2 "
                ),
              ),
            ),
            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: new FlatButton(onPressed:add,
                      child: new Text("+"
                      ,style:TextStyle(
                          color:Colors.white
                        ),
                      ), color:Colors.teal, ),
                ),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: new FlatButton(onPressed:sub,
                    child: new Text("-"
                      ,style:TextStyle(
                          color:Colors.white
                      ),
                    ), color:Colors.teal, ),
                ),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: new FlatButton(onPressed:mul,
                    child: new Text("X"
                      ,style:TextStyle(
                          color:Colors.white
                      ),
                    ), color:Colors.teal, ),
                ),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: new FlatButton(onPressed:div,
                    child: new Text("/"
                      ,style:TextStyle(
                          color:Colors.white
                      ),
                    ), color:Colors.teal, ),
                ),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                child: new FlatButton(onPressed:mod,
                  child: new Text("%"
                    ,style:TextStyle(
                        color:Colors.white
                    ),
                  ), color:Colors.teal, ),
              ),
            ),
           new Container(
               margin: const EdgeInsets.all(15.0),
               padding: const EdgeInsets.all(3.0),
               decoration: BoxDecoration(
                   border: Border.all(color: Colors.teal),
                 borderRadius:BorderRadius.circular(10.0)
               ),
               child :Padding(
              padding: const EdgeInsets.fromLTRB(0,100, 0, 100),
              child: Center(
                child: new Text(
                  "Answer is : $ans",

                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 30.0,
                    color: Colors.teal,

                  ),
                ),
              ),
            )
           )
          ],
        ),
      ),
    );
  }
}