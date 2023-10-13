import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'calculator app',
      theme: ThemeData(
        primaryColor: Colors.cyanAccent,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
   int? result = 0, num1 = 0,num2 = 0 ;
    add(){
     setState(() {
       num1 = int.parse(controller1.text);
       num2 = int.parse(controller2.text);
       result = num1! + num2!;
     });
  }
  sub(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! - num2!;
    });
  }
  div(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1!  ~/ num2!;
    });
  }
  multi(){
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! * num2!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("calculator app"),
          centerTitle: true,
          elevation: 8,
          backgroundColor: Colors.deepOrange,
        ),
        body: Padding(
            padding: EdgeInsets.all(30.0),
            child: Column(
              children: [
                Text(
                  "Result : $result",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: controller1,
                  decoration: InputDecoration(
                      labelText: "enter a number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: controller2,
                  decoration: InputDecoration(
                      labelText: "enter a number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
                SizedBox(
                  height: 25,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: ElevatedButton(
                          onPressed: () {
                            add();
                                controller1.clear();
                                controller2.clear();
                          },
                          child: Text("ADD",style: TextStyle(
                            fontSize: 30,
                          ),),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.deepOrangeAccent)
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: ElevatedButton(
                          onPressed: () {
                            sub();
                            controller1.clear();
                            controller2.clear();
                          },
                          child: Text("SUB",style: TextStyle(
                            fontSize: 30
                          ),),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.deepOrangeAccent),

                          ),
                        ),
                      )
                    ],
                  ),

                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: ElevatedButton(

                          onPressed: () {
                            div();
                            controller1.clear();
                            controller2.clear();
                          },
                          child: Text("DIV",style: TextStyle(
                            fontSize: 30
                          ),),
                          style: ButtonStyle(

                              backgroundColor: MaterialStateProperty.all(Colors.deepOrangeAccent),

                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        width: 130,
                        child: ElevatedButton(
                          onPressed: () {
                            multi();
                            controller1.clear();
                            controller2.clear();
                          },
                          child: Text("MULTI",style: TextStyle(
                            fontSize: 30
                          ),),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.deepOrangeAccent)
                          ),


                        ),
                      )


                    ],


                  ),

              ],
            ),
          ),
        );
  }
}
