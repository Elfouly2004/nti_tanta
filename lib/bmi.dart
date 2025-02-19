import 'package:flutter/material.dart';

class Bmii extends StatefulWidget {
  const Bmii({super.key});

  @override
  State<Bmii> createState() => _BmiiState();
}

class _BmiiState extends State<Bmii> {
  double x = 0;
  int wieght = 0;
  int age = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A0E21),
      appBar: AppBar(
        backgroundColor: const Color(0xff1A1F38),
        centerTitle: true,
        title: const Text(
          "BMI Calculator",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 136,
                height: 159,
                decoration: BoxDecoration(
                  color: const Color(0xff1A1F38),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(image: AssetImage("assets/images/Vector.png")),
                    const SizedBox(height: 10),
                    const Text(
                      "Female",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 136,
                height: 159,
                decoration: BoxDecoration(
                  color: const Color(0xff1A1F38),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Image(image: AssetImage("assets/images/mars.png")),
                    const SizedBox(height: 10),
                    const Text(
                      "Male",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),


          const SizedBox(height: 57),



          Container(
            width: 334,
            height: 189,
            decoration: BoxDecoration(
              color: const Color(0xff1A1F38),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Text(
                  "   ${x.toInt()}    cm",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Slider(
                  min: 0,
                  max: 200,
                  // divisions: 2,
                  value: x,
                  label: "$x",
                  onChanged: (newValue) {
                    setState(() {
                      x = newValue;
                    });
                  },
                ),
              ],
            ),
          ),

          const SizedBox(height: 64),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Container(
                width: 136,
                height: 159,
                decoration: BoxDecoration(
                  color: const Color(0xff1A1F38),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [


                    const Text(
                      "WIEGHT",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),


                    const SizedBox(height: 10),


                     Text(
                      "$wieght",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(

                          onTap: (){
                            setState(() {
                              wieght--;
                            });
                          },
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.remove,color: Colors.black,),),
                        ),

                        InkWell(
                          onTap: () {
                            setState(() {
                              wieght++;
                            });
                          },
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.add,color: Colors.black,),),
                        ),


                      ],
                    )


                  ],
                ),
              ),
              Container(
                width: 136,
                height: 159,
                decoration: BoxDecoration(
                  color: const Color(0xff1A1F38),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [


                    const Text(
                      "Age",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),


                    const SizedBox(height: 10),


                     Text(
                      "$age",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: (){
                            setState(() {
                              age--;
                            });
                          },
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.remove,color: Colors.black,),),
                        ),

                        InkWell(
                          onTap: () {
                            setState(() {
                              age++;
                            });
                          },
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.white,
                            child: Icon(Icons.add,color: Colors.black,),),
                        ),


                      ],
                    )


                  ],
                ),
              ),

            ],
          ),

          const SizedBox(height: 40),


          InkWell(
            onTap: () {

            },
            child: Container(

              width: 420,
              height: 84,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(15),

            ),
              child: Center(child: Text('CALCULATE',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),

              )),

            ),
          )








        ],
      ),
    );
  }
}
