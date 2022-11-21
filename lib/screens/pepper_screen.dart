import 'package:flutter/material.dart';
// import 'package:social_page/screens/homepaage_screen.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: const Color.fromARGB(244, 255, 255, 255),
      //   elevation: 0,
      //   actions: [
      //     Icon(Icons.heat_pump_rounded),
      //   ],
      // ),
      backgroundColor: const Color.fromARGB(244, 255, 255, 255),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // pizza stack image
            Stack(
              alignment: AlignmentDirectional(0, 5),
              children: [
                Container(
                  color: Colors.grey[600],
                  width: 200.0,
                  height: 200.0,
                ),
                Container(
                  color: Colors.blue[600],
                  width: 180.0,
                  height: 180.0,
                ),
                Container(
                  color: Colors.amber[600],
                  width: 160.0,
                  height: 160.0,
                ),
                Container(
                  color: Colors.green[600],
                  width: 140.0,
                  height: 140.0,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // text for pepperroni pizza

            Padding(
              padding: const EdgeInsets.only(left: 10, right: 15, top: 70),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "🔥Pepperoni Pizza",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Text("🌟 5/5"),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "⚡ Pepperoni pizza, Margarita \n      Pizza Margherita Italian \n      Cusine Tomato",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w300),
                      ),
                      Text("100%"),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "🌟 Ingredients",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "(Customable)",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // list for ingredients

            // counter button
            const AddCount(),

            // elevated button with navigator function
            Container(
              height: 45.0,
              width: 340,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: const [
                    BoxShadow(blurRadius: 2, color: Colors.black)
                  ]),
              child: const Center(
                child: Text(
                  "Order Now",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Colors.orange,
            //     side: const BorderSide(width: 0.5),
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(50),
            //     ),
            //   ),
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: ((context) => const HomePage()),
            //       ),
            //     );
            //   },
            //   child: const Text(
            //     "Order Now",
            //     style: TextStyle(color: Colors.black87),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

//widget area for button

class AddCount extends StatefulWidget {
  const AddCount({super.key});

  @override
  State<AddCount> createState() => _AddCountState();
}

class _AddCountState extends State<AddCount> {
  int counter = 0;

  addCounter() {
    setState(() {
      counter++;
    });
  }

  subCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Count"),
                  Text(
                    "💲Price",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 28,
                  width: 38,
                  child: FloatingActionButton(
                      // style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      // side: const BorderSide(width: 0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        // ),
                      ),
                      onPressed: () {
                        addCounter();
                      },
                      child: const Text(
                        "+",
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                      )),
                ),
                Text(
                  "$counter",
                  style: const TextStyle(fontSize: 25.0),
                ),
                SizedBox(
                  height: 28,
                  width: 38,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        side: const BorderSide(width: 0.2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        if (counter <= 0) {
                          //
                        } else {
                          setState(() {
                            counter--;
                          });
                        }
                      },
                      child: const Text("-", style: TextStyle(fontSize: 25.0))),
                ),
                const SizedBox(
                  width: 225,
                ),
                // ignore: prefer_const_constructors
                Text(
                  "  💲29.8",
                  style: const TextStyle(fontSize: 15.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
