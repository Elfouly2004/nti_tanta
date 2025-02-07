import 'package:flutter/material.dart';
class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    final List<String> filters = ["Trending", "By Artist", "ETH", "BTC"];
    return Scaffold(

      body: Column(
        children: [
          SizedBox(height: 40,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: RichText(text: TextSpan(
                  text: "Selling the ",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(text: "most popular ",style:TextStyle(fontSize: 35,color: Color(0xffA3D80D),fontWeight: FontWeight.bold), ),
                    TextSpan(text: "NFT is only here ",style:TextStyle(fontSize: 35,color:Colors. black,fontWeight: FontWeight.bold), )
                  ]
              )
              ),
            ),
          ),


          SizedBox(height: 40,),


          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(filters.length, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: ChoiceChip(
                    label: Text(
                      filters[index],
                      style: TextStyle(
                        color: selectedIndex == index ? Colors.white : Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    selected: selectedIndex == index,
                    selectedColor: Color(0xffA3D80D),
                    backgroundColor: Colors.grey.shade200,
                    showCheckmark: false,

                    onSelected: (bool selected) {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                  ),
                );
              }),
            ),
          ),

          SizedBox(height: 40,),



          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("Top Collection 🔥",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),

              IconButton(onPressed: () {

              }, icon: Icon(Icons.add)),

            ],
          ),

          SizedBox(height: 20,),

          Card(
            child: Container(
              width: 375,
              padding: EdgeInsets.all(10),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(image: AssetImage("assets/images/Image (1).png"),// Replace with actual image URL
                          width: double.infinity,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 10),



                  Text('Hypebest Apes G', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.access_time, size: 16),
                          SizedBox(width: 5),
                          // CountdownTimer(
                          //   endTime: endTime,
                          //   textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          // ),
                        ],
                      ),
                      Text(
                        'Ends in',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),


                  SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.monetization_on, size: 16),
                          SizedBox(width: 5),
                          Text('2.23 ETH', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      InkWell(
                        onTap:  () {

                        },
                        child: Container(
                            height: 37,
                            width: 122,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.format_color_fill_rounded,color: Colors.white,),
                                Text('Place Bid',textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),),
                              ],
                            )),
                      ),
                    ],
                  ),




                ],
              ),
            ),
          ),

          SizedBox(height: 40,),


          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.red, width: 2),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/images/Image (1).png', fit: BoxFit.cover),),),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Darlene Robertson',
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          '125k Followers',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xffA3D80D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  child: const Text(
                    'Follow',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),




        ],
      ),
    );
  }
}
