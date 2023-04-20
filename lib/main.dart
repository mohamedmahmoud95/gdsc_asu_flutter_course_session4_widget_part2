/*
This file contains several code examples for several widgets/classes
each block of code (separated by //----...----//) is a separate self-explanatory example
please only uncomment one example at a time
*/


/*
Content of this session:
Stateful widget Vs. Stateless widget
Iterating over a list of data
Circular Avatar
Cards
Containers with borders
Custom widgets
Creating a product widgets
Creating a scrollable list of product cards (Wrap)
 */

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gdsc_flutter_course_session4_widgets_part2/product.dart';
import 'package:gdsc_flutter_course_session4_widgets_part2/product_card.dart';





//-------------------------------------------------------------//
//counter app, using stateless widget
/*
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int counter = 0;
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: const BackButton(),
          title: const Text("Counter app"),
          centerTitle: true,
        ),
        body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const Text("You pressed the button this many times"),
              Text('$counter'),
            ],
          ),
        ),


      floatingActionButton: FloatingActionButton(
        onPressed: (){
          counter++;
          if (kDebugMode) {
            print("button pressed, counter = $counter");
          }
        },
        child: const Icon(Icons.add),
      ),
      ),
    );
  }
}
*/
//-------------------------------------------------------------//











//-------------------------------------------------------------//
//To create a stateful widget
//write stful, then tab
/*
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
*/


//-------------------------------------------------------------//













//-------------------------------------------------------------//
//counter app, using stateful widget
//this will not update the counter at run time
//because it's missing the setState widget, which triggers the state change
/*
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: const BackButton(),
          title: const Text("Counter app"),
          centerTitle: true,
        ),
        body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const Text("You pressed the button this many times"),
              Text('$counter'),
            ],
          ),
        ),


      floatingActionButton: FloatingActionButton(
        onPressed: (){
          counter++;
          if (kDebugMode) {
            print("button pressed, counter = $counter");
          }
        },
        child: const Icon(Icons.add),
      ),
      ),
    );
  }
}
*/
//-------------------------------------------------------------//














//-------------------------------------------------------------//
//counter app, using stateful widget, and setState
//hoof, now this one will work, after adding the setState widget
/*
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: const BackButton(),
          title: const Text("Counter app"),
          centerTitle: true,
        ),
        body:
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const Text("You pressed the button this many times"),
              Text('$counter'),
            ],
          ),
        ),


      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            counter++;
          });

          if (kDebugMode) {
            print("button pressed, counter = $counter");
          }
        },
        child: const Icon(Icons.add),
      ),
      ),
    );
  }
}
*/
//-------------------------------------------------------------//





//-------------------------------------------------------------////-------------------------------------------------------------//
//--------------------- Iterating over a list of data----------//
//-------------------------------------------------------------////-------------------------------------------------------------//






//-------------------------------------------------------------//
//
//iterating over a list of date, using map
/*
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {

  List <String> quotes = [
    'تطيبُ الحياةُ لمن لا يُبالي',
    'وانت عامل ايه دلوقت',
    'كُلّه تمام الحمد لله'
  ];
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: const BackButton(),
          title: const Text("this is my second app"),
          centerTitle: true,
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: quotes.map((quote) => Text(quote)).toList(),
          //  quotes.map((e) => Text(e)).toList(),
          ),
        ),
      ),
    );
  }
}
*/
//-------------------------------------------------------------//











//-------------------------------------------------------------//
//custom class of quotes
/*
class Quote{
  String quote;
  String author;

  Quote({required this.quote, required this.author});
}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List <Quote> quotes = [
    Quote(quote: 'محمد محمود', author: "وانت عامل ايه دلوقتي"),
    Quote(quote: 'محمد رسلان', author: "كلّه تمام الحمد لله، وانت عامل ايه"),
    Quote(quote: 'محمد محمود رسلان', author: "أنا كُلّه تمام الحمد لله، وانت عامل ايه؟"),

  ] ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: BackButton(),
          title: Text("Quotes app"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: quotes.map((quote) => Text("${quote.author} - ${quote.quote}")).toList(),
          ),
        ),
      ),
    );
  }
}
*/
//-------------------------------------------------------------//











//-------------------------------------------------------------//
//custom class of quotes
//now, let's define that class in a separate file:
/*
import 'quote.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List <Quote> quotes = [
    Quote(quote: 'محمد محمود', author: "وانت عامل ايه دلوقتي"),
    Quote(quote: 'محمد رسلان', author: "كلّه تمام الحمد لله، وانت عامل ايه"),
    Quote(quote: 'محمد محمود رسلان', author: "أنا كُلّه تمام الحمد لله، وانت عامل ايه؟"),

  ] ;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: BackButton(),
          title: Text("Quotes app"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: quotes.map((quote) => Text("${quote.author} - ${quote.quote}")).toList(),
          ),
        ),
      ),
    );
  }
}
*/
//-------------------------------------------------------------//











//-------------------------------------------------------------////-------------------------------------------------------------//
//--------------------- Circular Avatar ----------//
//-------------------------------------------------------------////-------------------------------------------------------------//










//-------------------------------------------------------------//
//circular avatar:
/*
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: const BackButton( color: Colors.black,),
            title: const Text("Circular avatar", style: TextStyle(color: Colors.black),),
            centerTitle: true,
          ),

          body:
        const Center(
        child: CircleAvatar(
         radius: 100,
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
          child: Text("Hello", style: TextStyle(fontSize: 40),),
        ),
         ),
      ),
    );
  }
}
*/
//-------------------------------------------------------------//






//-------------------------------------------------------------//
//circular avatar with foreground image:
/*
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          title: const Text("Circular avatar"),
          centerTitle: true,
        ),

        body:  const Center(
          child: CircleAvatar(
            maxRadius: 200,
          foregroundImage: AssetImage("assets/dash1.png"),
            backgroundColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
*/
//-------------------------------------------------------------//










//-------------------------------------------------------------//
//circular avatar with foreground and background image:
/*
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          title: const Text("Circular avatar"),
          centerTitle: true,
        ),

        body:  const Center(
          child: CircleAvatar(
            maxRadius: 200,
            foregroundImage: AssetImage("assets/dash1.png"),
            backgroundImage: NetworkImage("https://picsum.photos/id/327/500/200"),
            //child: Text("I'm Dash"),
          ),
        ),
      ),
    );
  }
}
*/
//-------------------------------------------------------------//







//-------------------------------------------------------------//
//circular avatar with background image/color:
/*
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          title: const Text("Circular avatar"),
          centerTitle: true,
        ),

        body:  const CircleAvatar(
          maxRadius: 100,
          foregroundImage: AssetImage("assets/dash1.png"),
          backgroundColor: Colors.lightBlue,
          foregroundColor: Colors.red, //color of the forground child
          backgroundImage: NetworkImage("https://picsum.photos/id/231/500/200"),
          child: Text("I'm Dash"),
        ),
      ),
    );
  }
}
*/

//-------------------------------------------------------------//




//-------------------------------------------------------------//
//circular avatar with border:
/*
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          title: const Text("Circular avatar"),
          centerTitle: true,
        ),

        body:  const Center(
          child: CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 155,
            child: CircleAvatar(
              maxRadius: 150,
              foregroundImage: AssetImage("assets/dash1.png"),
               backgroundColor: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
*/
//-------------------------------------------------------------//











//-------------------------------------------------------------//
//mini project: user profile screen
/*
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          title: const Text("Dash's profile"),
          centerTitle: true,
        ),

        body:   Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
                const Center(
                  child: CircleAvatar(
                    radius: 105,
                    backgroundColor: Colors.lightBlue,
                    child: CircleAvatar(
                      maxRadius: 100,
                      foregroundImage: AssetImage("assets/dash1.png"),
                      backgroundColor: Colors.white,
                      //child: Text("I'm Dash"),
                    ),
                  ),
                ),
                const SizedBox(height: 50,),

                Text("Hey, I'm Dash", style: TextStyle(fontSize: 30, color: Colors.blue.shade900),),
                const SizedBox(height: 20,),

                Text("Birthdate: 12/5/2017", style: TextStyle(fontSize: 20, color: Colors.blue.shade900),),
                const SizedBox(height: 20,),

                ElevatedButton(onPressed: (){}, child: Text("+ add friend"), ),


                const SizedBox(height: 100,),

                Align(
                  alignment: Alignment.centerLeft,
                    child: Text("      You may also know: ", style: TextStyle(fontSize: 25, color: Colors.blue.shade900))
                ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [

                    Column(
                      children: [
                        const CircleAvatar(
                          maxRadius: 50,
                          foregroundImage: AssetImage("assets/dash.png"),
                          backgroundColor: Colors.transparent,
                        ),
                        Text("Dash-1", style: TextStyle(fontSize: 20, color: Colors.blue.shade900),),
                      ],
                    ),

                    Column(
                      children: [
                        const CircleAvatar(
                          maxRadius: 50,
                          foregroundImage: AssetImage("assets/dash2.png"),
                          backgroundColor: Colors.transparent,
                        ),
                        Text("Dash-2", style: TextStyle(fontSize: 20, color: Colors.blue.shade900),),
                      ],
                    ),

                    Column(
                      children: [
                        const SizedBox(height: 5,),
                        const CircleAvatar(

                          maxRadius: 50,
                          foregroundImage: AssetImage("assets/dash3.png"),
                          backgroundColor: Colors.transparent,
                        ),
                        Text("Dash-3", style: TextStyle(fontSize: 20, color: Colors.blue.shade900),),
                      ],
                    ),


                  ],
                ),

                const SizedBox(height: 50,),


                         ],
            ),
          ),
        ),
      ),
    );
  }
}
*/
//-------------------------------------------------------------//






//-------------------------------------------------------------////-------------------------------------------------------------//
//--------------------- Adding borders to containers ------------//
//-------------------------------------------------------------////-------------------------------------------------------------//












//-------------------------------------------------------------//
//Adding borders to containers
/*
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          title: const Text("Circular avatar"),
          centerTitle: true,
        ),

        body:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              //creating borders by wrapping another container with
              // another container of different color
              //*must add padding or margin
              Container(
            //    padding: const EdgeInsets.all(2),
                color: Colors.blue,
                
                child: Container(
                  margin: const EdgeInsets.all(2),
                  color: Colors.white,
                  padding: const EdgeInsets.all(16.0),

                  child: const Text(
                    "Container 0",
                    style: TextStyle(fontSize: 35.0),
                  ),
                ),
              ),


              const SizedBox(height: 50,),

              Container(
                padding: const EdgeInsets.all(16.0),
                decoration:  BoxDecoration(
                  border: Border.all(width: 2, color: Colors.blue),
                ),

                child: const Text(
                  "Container 1",
                  style: TextStyle(fontSize: 35.0),
                ),
              ),

              const SizedBox(height: 50,),

              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(width: 2,color: Colors.blue),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                  child: const Text("Container 2", style: TextStyle(fontSize: 35),),
              ),

              const SizedBox(height: 50,),


              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: Colors.blue,
                      width: 2.0,
                    ),
                  ),
                ),

                child: const Text(
                  "Container 3",
                  style: TextStyle(fontSize: 34.0),
                ),
              ),


                const SizedBox(height: 50,),
            ],
          ),
        )
      ),
    );
  }
}
*/

 */
//-------------------------------------------------------------//









//-------------------------------------------------------------////-------------------------------------------------------------//
//--------------------- Card Widget (It looks like a container, with a few more  decoration properties) ------------//
//-------------------------------------------------------------////-------------------------------------------------------------//







//-------------------------------------------------------------//
//Card Widget (It looks like a container, with a few more decoration properties)
/*
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       // backgroundColor: Colors.white,
        appBar: AppBar(
          leading: const BackButton(),
          title: const Text("Cards"),
          centerTitle: true,
          backgroundColor: Colors.blue
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [


          const Card(
          child: SizedBox(
          width: 300,
            height: 100,
            child: Center(child: Text('Elevated Card', style: TextStyle(fontSize: 35),)),
          ),
          ),


          //with borders
          Card(
            color: Colors.white54,
            elevation: 2,
            shadowColor: Colors.blue,

            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Theme.of(context).colorScheme.outline,
              ),

              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("Filled card, rounded edges", style: TextStyle(fontSize: 25),),
            ),
          ),


          const Card(
            color: Colors.white,
            elevation: 0,
            child: SizedBox(
              width: 300,
              height: 100,
              child: Center(child: Text('Filled Card', style: TextStyle(fontSize: 35),),),
            ),
          ),
            ],
          ),
        ),
      ),
    );
  }
}
*/
//-------------------------------------------------------------//









//-------------------------------------------------------------////-------------------------------------------------------------//
//--------------------- Now, let's turn any widget into a clickable widget ------------//
//-------------------------------------------------------------////-------------------------------------------------------------//








//-------------------------------------------------------------//
// InkWell
/*
InkWell is the material widget in flutter.
that can turn any widget into a clickable widget.
It responds to the touch action as performed by the user.
Inkwell will respond when the user clicks the button.
There are so many gestures like double-tap, long press, tap down, etc.
 */

/*
void main() => runApp( MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
String inkwellText = "idle";
Color inkwellTextColor = Colors.black;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.white,
        appBar: AppBar(
            leading: const BackButton(),
            title: const Text("Inkwell"),
            centerTitle: true,
            backgroundColor: Colors.blue
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [


              InkWell(
                child: Image.asset("assets/dash.png"),
                onTap: (){
                  setState(()
                       {
                  inkwellText = "tapped";
                  inkwellTextColor = Colors.teal;
                }
                );
                },

                onDoubleTap: () {
                  setState(() {
                    inkwellText = "double tapped";
                    inkwellTextColor = Colors.purple;
                  });
                },

                onLongPress: () {
                  setState(() {
                    inkwellText = "Long pressed";
                    inkwellTextColor = Colors.redAccent;

                  });
                },
              ),

              const SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Inkwell state:", style: TextStyle(fontSize: 30),),
                  Text(inkwellText, style:  TextStyle(fontSize: 30, color: inkwellTextColor),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/
//-------------------------------------------------------------//







//-------------------------------------------------------------//
//Product card:
/*
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          title: const Text("product card"),
          centerTitle: true,
        ),

        body:
        Center(
          child: InkWell(
            onTap: (){
              debugPrint("product tapped, opening product page...");
            },
            child: Card(

              child: SizedBox(
                width: 190,
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: SizedBox(

                          height: 140,
                          child: Image.network("https://www.nicepng.com/png/detail/951-9517748_dior-cruise-blue-patent-lady-dior-bag-designer.png",),
                        ),
                      ),

                      const SizedBox(height: 20,),

                      const Text("Product name", style: TextStyle(fontSize: 15),),

                      const SizedBox(height: 10,),

                      RatingBarIndicator(
                        rating: 4,
                        itemCount: 5,
                        itemSize: 15.0,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, _) =>
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                      ),

                      const SizedBox(height: 10,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("\$200", style: TextStyle(fontSize: 15,),),
                          Icon(Icons.shopping_cart, color: Colors.deepOrange,size: 20,)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ),
      ),
    );
  }
}
*/
//-------------------------------------------------------------//










//-------------------------------------------------------------//
//Product card:
//as a custom widget
/*
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          title: const Text("product card"),
          centerTitle: true,
        ),

        body:
        Center(
          child: productCard(),
        ),
      ),
    );
  }
}

Widget productCard() =>
    InkWell(
      onTap: (){
        debugPrint("product tapped, opening product page...");
      },
      child: Card(

        child: SizedBox(
          width: 190,
          height: 250,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(

                    height: 140,
                    child: Image.network("https://www.nicepng.com/png/detail/951-9517748_dior-cruise-blue-patent-lady-dior-bag-designer.png",),
                  ),
                ),

                const SizedBox(height: 20,),

                const Text("Product name", style: TextStyle(fontSize: 15),),

                const SizedBox(height: 10,),

                RatingBarIndicator(
                  rating: 4,
                  itemCount: 5,
                  itemSize: 15.0,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, _) =>
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                ),

                const SizedBox(height: 10,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("\$200", style: TextStyle(fontSize: 15,),),
                    Icon(Icons.shopping_cart, color: Colors.deepOrange,size: 20,)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
*/
//-------------------------------------------------------------//








//-------------------------------------------------------------//
//Product card:
//as a separate class in a separate file
/*
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          title: const Text("product card"),
          centerTitle: true,
        ),

        body: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Wrap(
                  spacing: 5,
                  runSpacing: 5,
                  children: [
                        ProductCard(product: sampleProduct1,),
                        ProductCard(product: sampleProduct2,),
                        ProductCard(product: sampleProduct3,),
                        ProductCard(product: sampleProduct4,),
                        ProductCard(product: sampleProduct5,),

                      ],
              ),
              ),
            )),

            floatingActionButton: FloatingActionButton(onPressed: () {  },
              backgroundColor: Colors.white,
              child: Icon(Icons.shopping_cart, color: Colors.deepOrange,),

            ),
      ),
    );
  }
}
*/
//-------------------------------------------------------------//










//-------------------------------------------------------------//
//Product card:
//Now, let's create a list of products, and iterate over them using map
/*

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List <Product> products = [
    sampleProduct1,sampleProduct2,sampleProduct3,sampleProduct4,sampleProduct5
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const BackButton(),
          title: const Text("product card"),
          centerTitle: true,
        ),

        body: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Wrap(
                  spacing: 5,
                  runSpacing: 5,
                  children: products.map((p) => ProductCard(product: p)).toList(),
                ),
              ),
            )),

        floatingActionButton: FloatingActionButton(onPressed: () {  },
          backgroundColor: Colors.white,
          child: const Icon(Icons.shopping_cart, color: Colors.deepOrange,),

        ),
      ),
    );
  }
}
*/
//-------------------------------------------------------------//







//-------------------------------------------------------------//
//mini project: Products page:

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List <Product> products = [
    sampleProduct1,sampleProduct2,sampleProduct3,sampleProduct4,sampleProduct5,
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: const BackButton(color: Colors.black,),
            title: const Text("Shopping app", style: TextStyle(color: Colors.black),),
            centerTitle: true,
          ),

        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Wrap(
                spacing: 10,
                runSpacing: 10,

            children: products.map((p) => ProductCard(product: p)).toList(),
            ),
            ),
          ),

          floatingActionButton: FloatingActionButton(onPressed: () {  },
          backgroundColor: Colors.white,
          child: const Icon(Icons.shopping_cart, color: Colors.deepOrange,),

           ),
          ),
    );
  }
}



//-------------------------------------------------------------//









