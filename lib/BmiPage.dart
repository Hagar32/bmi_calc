import 'dart:math';

import 'package:bmi_calculator/BmiResult.dart';
import 'package:flutter/material.dart';
class BmiPage extends StatefulWidget {
  const BmiPage({super.key});

  @override
  State<BmiPage> createState() => _BmiPageState();


}

class _BmiPageState extends State<BmiPage> {
bool isMale=false;
double height =100;
int weight =60;
int age =15;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('BMI CALCULATOR',style: TextStyle(color: Colors.white),) ,
        backgroundColor: Colors.black45,
        centerTitle: true,
      ),
      backgroundColor: Colors.black45,
      body:
      Column(
        children: [
          Expanded(child:
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(

              children: [
                Expanded(child:

            Container(
            decoration: BoxDecoration(
              color: isMale ? Colors.blue : Colors.blueGrey.shade900,
              borderRadius: BorderRadius.circular(15),
            ),
      width: double.infinity,
height: 240,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 16,),
          GestureDetector( onTap: ()=>setState(() {
            isMale =true;
          }),
              child: Icon(Icons.male,color: Colors.white,size: 50,)),
          Text('Male',style: TextStyle(fontSize: 22,color: Colors.grey),)

        ],
      ),

    ),

                  ),
                  SizedBox(width: 16,),
                  Expanded(child:

                  Container(
                  decoration: BoxDecoration(

                    color: isMale ? Colors.blue : Colors.blueGrey.shade900,
                  borderRadius: BorderRadius.circular(15),
                  ),
                  width: double.infinity,
                  height: 240,


                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  SizedBox(height: 16,),
                  GestureDetector( onTap: ()=>setState(() {
                  isMale = false;
                  }),
                  child: Icon(Icons.female,color: Colors.white,size: 50,)),
    Text('Female',style: TextStyle(fontSize: 22,color: Colors.grey),)

    ],
    ),
    ),
                  ),
    ]

                ),
                ),

          ),
          Expanded(
            child: Padding(
              padding:  EdgeInsets.symmetric(
                horizontal: 20.0,
              ),

              child: Container(

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    SizedBox(width: 16,height: 16,),
                    Text(
                      'HEIGHT',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold, color: Colors.grey,
                      ),
                    ),
                    Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '$height',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold, color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold, color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      activeColor: Colors.white,

                      thumbColor: Colors.pinkAccent,
                      value: height,
                      max: 200,
                      min: 60.0,
                      onChanged: (value) {
                        setState(() {
                          height = value.floorToDouble();
                        });
                      },
                    ),
    Expanded(
    child: Padding(
    padding:  EdgeInsets.all(20.0),
    child: Row(
    children:
    [
    Expanded(
    child: Container(
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text(
    'WEIGHT',
    style: TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
    color: Colors.grey,
    ),
    ),
    Text(
    '$weight',
    style: TextStyle(
    fontSize: 40.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    ),
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    FloatingActionButton(
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
      backgroundColor: Colors.grey.shade600,
    onPressed: () {
    setState(() {
    weight--;
    });
    },
    heroTag: 'weight negative',
    mini: true,
    child: Icon(
    Icons.remove,
    ),
    ),
    FloatingActionButton(
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
      backgroundColor: Colors.grey.shade600,
    onPressed: () {
    setState(() {
    weight++;
    });
    },
    heroTag: 'weight positive',
    mini: true,
    child: Icon(
    Icons.add,
    ),
    ),
    ],
    ),
    ],
    ),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(
    15.0,
    ),
    color: Colors.blueGrey.shade800,
    ),
    ),
    ),
    SizedBox(
    width: 20.0,
    ),
    Expanded(
    child: Container(

    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text(
    'AGE',
    style: TextStyle(
    fontSize: 25.0,
    fontWeight: FontWeight.bold, color: Colors.grey,
    ),
    ),
    Text(
    '$age',
    style: TextStyle(
    fontSize: 40.0,
    fontWeight: FontWeight.bold, color: Colors.white,
    ),
    ),
    Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    FloatingActionButton(
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(2),
      ),
      backgroundColor: Colors.grey.shade600,
    onPressed: () {
    setState(() {
    age--;
    });
    },
    heroTag: 'age negative',
    mini: true,
    child: Icon(
    Icons.remove,
    ),
    ),
    FloatingActionButton(
shape: BeveledRectangleBorder(
  borderRadius: BorderRadius.circular(2),
),
backgroundColor: Colors.grey.shade600,
mini: true,
    onPressed: () {
    setState(() {

    age++;
    });
    },

    child: Icon(
    Icons.add,
    ),
    ),
    ],
    ),
    ],
    ),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(
    15.0,
    ),
    color:Colors.blueGrey.shade800,
    ),
    ),
    ),
    ],
    ),
    ),
    ),
    Container(
      height: 50,
    width: double.infinity,
    color: Colors.pinkAccent,
    child: MaterialButton(
      child: Text('calculate', style: TextStyle(color:Colors.white, fontSize: 22),),
    onPressed: () {
    double result = weight / pow(height / 100, 2);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>BmiResult( age: age,
      isMale: isMale,
      result: result.round(),)));
    }

    ),
    ),
    ]
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    15.0,
                  ),
                  color: Colors.blueGrey.shade900,
                ),

              ),
            ),
          ),
              ],

            ),

          );


  }
}

