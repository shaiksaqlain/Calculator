import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculater",
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  
  TextEditingController t1=new TextEditingController(text:"");
  TextEditingController t2=new TextEditingController(text:"");

  var num1=0,num2=0,sum=0;
  void toAdd(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1+num2;
    });
  }
    void tosub(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1-num2;
    });
  }
    void tomul(){
    setState(() {
      
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1*num2;
    });
  }
    void todiv(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1~/num2;
    });
  }
     void toreset(){
    setState(() {
      t1.text=" ";
      t2.text=" ";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.red,
      ),
    
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Output:$sum",
            style: TextStyle(
            fontSize: 30,
            ),
            ),
            TextField(
              decoration: InputDecoration( 
                labelText: 'Enter Value1',
                hintText: "Enter number2",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              ),
              keyboardType: TextInputType.number,
              controller: t1,
            ),
            Padding(padding: EdgeInsets.only(top:20),),
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter value2',
                hintText: "Enter number2",
    
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
              )
              ),
               keyboardType: TextInputType.number,
               controller: t2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  color: Colors.teal,
                  child: Text(
                    "+",
                    style: TextStyle(),
                  ),
                  onPressed:toAdd,
                ),
                MaterialButton(
                  color: Colors.teal,
                  child: Text(
                    "-",
                    style: TextStyle(),
                  ),
                  onPressed:tosub,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  color: Colors.teal,
                  child: Text(
                    "*",
                    style: TextStyle(),
                  ),
                  onPressed:tomul,
                ),
                MaterialButton(
                  color: Colors.teal,
                  child: Text(
                    "/",
                    style: TextStyle(),
                  ),
                  onPressed:todiv,
                )
              ],
            ),
            MaterialButton(
              child: Text("clear"),
              color:Colors.teal,
              onPressed:toreset,
              ),
          ],
        ),
      ),
    );
  }
}
