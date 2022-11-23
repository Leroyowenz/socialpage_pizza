import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
// import 'package:social_page/screens/homepaage_screen.dart';

class PizzaScreen extends StatefulWidget {
  const PizzaScreen({super.key});

  @override
  State<PizzaScreen> createState() => _PizzaScreenState();
}

class _PizzaScreenState extends State<PizzaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(244, 255, 255, 255),
      body: Column(
        children: [
          // pizza stack image1

          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Container(
                width: double.infinity,
                height: 410,
                clipBehavior: Clip.none,
              ),
              Container(
                width: double.infinity,
                height: 390,
                decoration: const BoxDecoration(
                  color: Color(0xffEAE6DF),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.elliptical(300, 200),
                    bottomLeft: Radius.elliptical(300, 200),
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 300,
                margin: const EdgeInsets.only(top: 60),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffdadada),
                    width: 2.0,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: 250,
                height: 250,
                margin: const EdgeInsets.only(top: 85),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffdadada).withOpacity(0.8),
                    width: 2.0,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.only(top: 110),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xffdadada).withOpacity(0.5),
                    width: 2.0,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                width: 150,
                height: 150,
                margin: const EdgeInsets.only(top: 135),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    border: Border.fromBorderSide(
                      BorderSide(
                        color: Color(0xffdadada),
                      ),
                    ),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey, blurRadius: 0, spreadRadius: 0),
                      BoxShadow(
                          color: Colors.white, blurRadius: 16, spreadRadius: 1),
                    ]),
                child: const Image(
                  image: AssetImage("assets/images/pizza1.png"),
                ),
              ),
              Positioned(
                top: 52,
                right: 20,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xffdfdfdf),
                      width: 2.0,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(18.0)),
                  ),
                  child: const Icon(Icons.favorite_border_outlined),
                ),
              ),
              Positioned(
                top: 52,
                left: 20,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffdfdfdf),
                        width: 2.0,
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(18.0)),
                    ),
                    child: const Image(
                        image: AssetImage("assets/images/Arrow .png")),
                  ),
                ),
              ),
              Positioned(
                bottom: 12,
                left: 100,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0XFFEAE6DF),
                    border: Border.all(
                      color: const Color(0xffdfdfdf),
                      width: 2.0,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(11.0)),
                  ),
                  child: const Text(
                    "S",
                    style: TextStyle(
                      fontSize: 23,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    border: Border.all(
                      color: const Color(0xffdfdfdf),
                      width: 2.0,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(11.0)),
                  ),
                  child: const Text(
                    "M",
                    style: TextStyle(
                      fontSize: 23,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Positioned(
                right: 100,
                bottom: 12,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0XFFEAE6DF),
                    border: Border.all(
                      color: const Color(0xffdfdfdf),
                      width: 2.0,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(11.0)),
                  ),
                  child: const Text(
                    "L",
                    style: TextStyle(
                      fontSize: 23,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),

          // const SizedBox(
          //   height: 10,
          // ),
          // text for pepperroni pizza
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 15, top: 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "🔥Pepperoni Pizza",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "🌟 5/5",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "⚡ Pepperoni pizza, Margarita \n      Pizza Margherita Italian \n      Cusine Tomato",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                    ),
                    Text(
                      "100%",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      "🌟 Ingredients",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "(Customable)",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 14,
                ),
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromARGB(255, 234, 230, 223)),
                      padding: const EdgeInsets.all(2.0),
                      child: Image.asset('assets/images/Vector (12).png'),
                    ),
                    const Gap(5),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromARGB(255, 234, 230, 223)),
                      padding: const EdgeInsets.all(2.0),
                      child: Image.asset('assets/images/Emoji.png'),
                    ),
                    const Gap(6),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromARGB(255, 234, 230, 223)),
                      padding: const EdgeInsets.all(2.0),
                      child: Image.asset('assets/images/Emoji (1).png'),
                    ),
                    const Gap(5),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromARGB(255, 234, 230, 223)),
                      padding: const EdgeInsets.all(2.0),
                      child: Image.asset('assets/images/Emoji (2).png'),
                    ),
                    const Gap(6),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromARGB(255, 234, 230, 223)),
                      padding: const EdgeInsets.all(2.0),
                      child: Image.asset('assets/images/Emoji (3).png'),
                    ),
                    const Gap(6),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromARGB(255, 234, 230, 223)),
                      padding: const EdgeInsets.all(2.0),
                      child: Image.asset('assets/images/Emoji (4).png'),
                    ),
                    const Gap(6),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color.fromARGB(255, 234, 230, 223)),
                      padding: const EdgeInsets.all(2.0),
                      child: Image.asset('assets/images/Emoji (5).png'),
                    ),
                    const Gap(70),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xffFFA200)),
                      padding: const EdgeInsets.all(2.0),
                      child: Image.asset('assets/images/Edit.png'),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // list for ingredients

          const SizedBox(
            height: 10,
          ),
          // counter button
          const AddCount(),
          const SizedBox(
            height: 30,
          ),
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
  double price = 29.8;
  double total = 0.0;

  subCounter() {
    setState(() {
      counter--;
    });
  }

  addCounter() {
    setState(() {
      counter++;
      counter * price;
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
                  Text("〽️Count"),
                  Padding(
                    padding: EdgeInsets.only(right: 13),
                    child: Text(
                      "💲Price",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                    ),
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
                            total = total - price;
                          });
                        }
                      },
                      child: const Text("-", style: TextStyle(fontSize: 25.0))),
                ),
                Text(
                  "$counter",
                  style: const TextStyle(fontSize: 25.0),
                ),
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
                        total = price * counter;
                      },
                      child: const Text(
                        "+",
                        style: TextStyle(color: Colors.black, fontSize: 20.0),
                      )),
                ),

                const SizedBox(
                  width: 220,
                ),
                // ignore: prefer_const_constructors
                Text(
                  "💲$total ",
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class PizzaScreen extends StatefulWidget {
//   const PizzaScreen({super.key});

//   @override
//   State<PizzaScreen> createState() => _PizzaScreenState();
// }

// class _PizzaScreenState extends State<PizzaScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           // mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             Stack(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 30, right: 30),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                         height: 39,
//                         width: 40,
//                         decoration: const BoxDecoration(
//                             borderRadius: BorderRadius.all(Radius.circular(18)),
//                             color: Color.fromARGB(255, 234, 230, 223)),
//                         padding: const EdgeInsets.all(2.0),
//                         child: Image.asset('assets/images/Arrow.png'),
//                       ),
//                       const SizedBox(
//                         width: 50,
//                       ),
//                       Container(
//                         height: 39,
//                         width: 40,
//                         decoration: const BoxDecoration(
//                             borderRadius: BorderRadius.all(Radius.circular(18)),
//                             color: Color.fromARGB(255, 234, 230, 223)),
//                         padding: const EdgeInsets.all(2.0),
//                         child: const Icon(Icons.favorite_outline_sharp),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               children: [
//                 Image.asset('assets/images/fire1.png'),
//                 const Text('Pepperoni pizza'),
//                 Image.asset('assets/Star.png'),
//                 const Text('5/5')
//               ],
//             ),
//             Row(
//               children: const [
//                 Text(
//                     '⚡️Pepperoni pizza Margaita\nPizza Margheita Italian\ncuisine Tomato'),
//                 Text('100%')
//               ],
//             ),
//             Row(
//               children: const [Text('✨Ingredents'), Text('(Customable)')],
//             ),
//             Row(
//               children: [
//                 Container(
//                   height: 39,
//                   width: 40,
//                   decoration: const BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(10)),
//                       color: Color.fromARGB(255, 234, 230, 223)),
//                   padding: const EdgeInsets.all(2.0),
//                   child: Image.asset('assets/Vector (12).png'),
//                 ),
//                 Container(
//                   height: 39,
//                   width: 40,
//                   decoration: const BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(10)),
//                       color: Color.fromARGB(255, 234, 230, 223)),
//                   padding: const EdgeInsets.all(2.0),
//                   child: Image.asset('assets/Emoji.png'),
//                 ),
//                 Container(
//                   height: 39,
//                   width: 40,
//                   decoration: const BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(10)),
//                       color: Color.fromARGB(255, 234, 230, 223)),
//                   padding: const EdgeInsets.all(2.0),
//                   child: Image.asset('assets/Emoji (1).png'),
//                 ),
//                 Container(
//                   height: 39,
//                   width: 40,
//                   decoration: const BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(10)),
//                       color: Color.fromARGB(255, 234, 230, 223)),
//                   padding: const EdgeInsets.all(2.0),
//                   child: Image.asset('assets/Emoji (2).png'),
//                 ),
//                 Container(
//                   height: 39,
//                   width: 40,
//                   decoration: const BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(10)),
//                       color: Color.fromARGB(255, 234, 230, 223)),
//                   padding: const EdgeInsets.all(2.0),
//                   child: Image.asset('assets/Emoji (3).png'),
//                 ),
//                 Container(
//                   height: 39,
//                   width: 40,
//                   decoration: const BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(10)),
//                       color: Color.fromARGB(255, 234, 230, 223)),
//                   padding: const EdgeInsets.all(2.0),
//                   child: Image.asset('assets/Emoji (4).png'),
//                 ),
//                 Container(
//                   height: 39,
//                   width: 40,
//                   decoration: const BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(10)),
//                       color: Color.fromARGB(255, 234, 230, 223)),
//                   padding: const EdgeInsets.all(2.0),
//                   child: Image.asset('assets/Emoji (5).png'),
//                 ),
//                 Container(
//                   height: 39,
//                   width: 40,
//                   decoration: const BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(10)),
//                       color: Color.fromARGB(255, 234, 230, 223)),
//                   padding: const EdgeInsets.all(2.0),
//                   child: Image.asset('assets/Emoji (6).png'),
//                 ),
//                 Container(
//                   height: 39,
//                   width: 40,
//                   decoration: const BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(10)),
//                       color: Color(0xffFFA200)),
//                   padding: const EdgeInsets.all(2.0),
//                   child: Image.asset('assets/Edit 2.png'),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
