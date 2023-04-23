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










//-------------------------------------------------------------//
//Another example on stateful widgets
//toggling the color of a button whenever pressed
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

  bool pressed = false;   //button pressing flag

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,

        body:
        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: pressed? Colors.teal: Colors.red,
             ),
              onPressed: (){
            setState(() {
              pressed = !pressed; //toggle the button state
            });
          },
              child: Text(
            pressed? 'Green':'Red',
            style: const TextStyle(fontSize: 50),
          )),
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
//iterating over a list of date, using a for loop
/*
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {

  List <String> quotes = [
    "The more you teach, the better you learn. - Prof. Feynman \n",
    "Life is tough my darling, but so are you. – Stephanie Henry\n",
    "Be kind, for everyone you meet is fighting a hard battle. – Plato"
  ];
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
              [
                for (int i = 0 ; i < quotes.length ; i++)
                   Text(quotes[i]),
              ]
          ),
        ),
      ),
    );
  }
}
*/
//-------------------------------------------------------------//







//-------------------------------------------------------------//
//iterating over a list of date, using map function
/*
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {

  List <String> quotes = [
    "The more you teach, the better you learn. - Prof. Feynman \n",
    "Life is tough my darling, but so are you. – Stephanie Henry\n",
    "Be kind, for everyone you meet is fighting a hard battle. – Plato"
  ];
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,


        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: quotes.map((quote) => Text(quote)).toList(),

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

  Quote({
    required this.quote,
    required this.author
  });
}

List <Quote> quotes = [
  Quote(quote: 'The more you teach, the better you learn.', author: "Prof. Feynman"),
  Quote(quote: 'Life is tough my darling, but so are you.', author: "Stephanie Henry"),
  Quote(quote: 'Be kind, for everyone you meet is fighting a hard battle.', author: "Plato"),
] ;

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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: quotes.map((quote) =>
                Text("${quote.quote} - ${quote.author}\n"))
                .toList(),

          ),
        ),
      ),
    );
  }
}
*/
/*
Now, for a cleaner code, move the Quote class to a new dart file
import it here in main.dart
 */
//-------------------------------------------------------------//












//Now, let's put that text into a card



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
        backgroundColor: Colors. lightBlue[900],
        appBar: AppBar(
            backgroundColor: Colors. lightBlue[800],
            leading: const BackButton(),
            title: const Text("Cards"),
            centerTitle: true,
        ),

        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),

            child: Card(
              child: SizedBox(
                height:150,
                child: Center(
                    child: Padding(
                    padding: EdgeInsets.all(20.0),
                      child: Text( "The more you teach, "
                      "the better you learn. -Prof. Feynman",
                      style: TextStyle(fontSize: 25),
                  ),
                )),
              ),
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
//Iterating over the list of quotes
//and rendering them into cards
/*

class Quote{
  String quote;
  String author;

  Quote({
    required this.quote,
    required this.author
  });
}

List <Quote> quotes = [
  Quote(quote: 'The more you teach, the better you learn.', author: "Prof. Feynman"),
  Quote(quote: 'Life is tough my darling, but so are you.', author: "Stephanie Henry"),
  Quote(quote: 'Be kind, for everyone you meet is fighting a hard battle.', author: "Plato"),
] ;


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         backgroundColor: Colors. lightBlue[900],
        appBar: AppBar(
          elevation: 0,
            leading: const BackButton(),
            title: const Text("Cards of quotes"),
            centerTitle: true,
            backgroundColor: Colors.lightBlue[800]
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
              for (Quote quote in quotes)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: SizedBox(
                      child: Center(
                          child: Padding(
                          padding: const EdgeInsets.all(20.0),
                            child:  Text("${quote.quote} \n"
                                "-${quote.author}\n",
                              style: const TextStyle(fontSize: 25),
                            ),
                        )
                      )
                    ),
                    ),
                  ),
               ],),
        ),
      );

  }
}
*/
//-------------------------------------------------------------//









//-------------------------------------------------------------//
//A card can be the parent to almost any type of widget
/*
List <String> imageURLs = ['assets/dash.png', 'assets/dash1.png', 'assets/dash2.png',];


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         backgroundColor: Colors. lightBlue[900],
        appBar: AppBar(
          elevation: 0,
            leading: const BackButton(),
            title: const Text("Cards of quotes"),
            centerTitle: true,
            backgroundColor: Colors.lightBlue[800]
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
                for (String imageURL in imageURLs)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: SizedBox(
                        width: 350,

                        child: Center(
                            child: Image.asset(imageURL),
                          )
                        )
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









//-------------------------------------------------------------//
//Card Widget, different borders
/*
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       backgroundColor: Colors.lightBlue[900],
        appBar: AppBar(
          leading: const BackButton(),
          title: const Text("Cards"),
          centerTitle: true,
          backgroundColor: Colors.blue[700]
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [

              Card(
                color: Colors.white,
                child:  Image.asset('assets/dash.png',
                  width: 300,),
              ),

              const SizedBox(height: 30),

              Card(
                color: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(30)),
                ),
                child:  Image.asset('assets/dash.png', width: 300,),
              ),

              const SizedBox(height: 30),

              Card(
                color: Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(70)
                  ),
                ),
                child:  Image.asset('assets/dash.png', width: 300,),
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
             Center(
            child: CircleAvatar(
             radius: 100,
              backgroundColor: Colors.lightBlue[800],
              foregroundColor: Colors.white,
              child: const Text("Hello", style:
              TextStyle(fontSize: 40),),
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
        backgroundColor: Colors.lightBlue[700],
        appBar: AppBar(
       //   backgroundColor: Colors.lightBlue[800],
          elevation: 0,
          leading: const BackButton(),
          title: const Text("Circular avatar"),
          centerTitle: true,
        ),

        body:  const Center(
          child: CircleAvatar(
            maxRadius: 150,
            foregroundImage: AssetImage("assets/dash1.png"),
            backgroundColor: Colors.white,
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
            maxRadius: 150,
            foregroundImage: AssetImage("assets/dash1.png"),
            backgroundImage:
            NetworkImage("https://picsum.photos/id/327/500/200"),
          ),
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
            radius: 160,
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
          backgroundColor: Colors.white10,
          elevation: 0,
          leading: const BackButton(color: Colors.black),
          title: const Text("Dash's profile", style: TextStyle(color: Colors.black),),
          centerTitle: true,
        ),

        body:   Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
                 Center(
                  child: CircleAvatar(
                    radius: 74,
                    backgroundColor: Colors.blue[900],
                    child: const CircleAvatar(
                      maxRadius: 70,
                      foregroundImage: AssetImage("assets/dash1.png"),
                      backgroundColor: Colors.white,
                      //child: Text("I'm Dash"),
                    ),
                  ),
                ),
                const SizedBox(height: 40,),

                 Text("Hey, I'm Dash", style: TextStyle(fontSize: 35, color: Colors.blue[900]),),
                const SizedBox(height: 10,),

                 Text("TheDash@Flutter.dev", style: TextStyle(fontSize: 18, color:  Colors.blue[900]),),
                const SizedBox(height: 20,),
                const SizedBox(height: 20,),


                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("335", style: TextStyle(fontSize: 30, color: Colors.blue.shade900),),
                        Text("Follower", style: TextStyle(fontSize: 15, color: Colors.blue.shade900),),
                      ],
                    ),

                    Image.asset("assets/verticalDivider.png", height: 50, ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("105", style: TextStyle(fontSize: 30, color: Colors.blue.shade900),),
                        Text("Following", style: TextStyle(fontSize: 15, color: Colors.blue.shade900),),
                      ],
                    ),

                    Image.asset("assets/verticalDivider.png", height: 50, ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("750", style: TextStyle(fontSize: 30, color: Colors.blue.shade900),),
                        Text("Friends", style: TextStyle(fontSize: 15, color: Colors.blue.shade900),),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 40,),

                ElevatedButton(

                    onPressed: (){},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue.shade700),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                            )
                        )
                    ),
                    child: const Text('+ Add friend')
                ),


                const SizedBox(height: 50,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(padding: const EdgeInsets.all(8),
                        child: Text("You may also know: ",
                            style: TextStyle(fontSize: 20, color: Colors.blue.shade900))),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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

                      const SizedBox(width: 20,),

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

                      const SizedBox(width: 20,),

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

                      const SizedBox(width: 20,),

                      Column(
                        children: [
                          const SizedBox(height: 5,),
                          const CircleAvatar(

                            maxRadius: 50,
                            foregroundImage: AssetImage("assets/dash4.png"),
                            backgroundColor: Colors.transparent,
                          ),
                          Text("Dash-4", style: TextStyle(fontSize: 20, color: Colors.blue.shade900),),
                        ],
                      ),

                      const SizedBox(width: 20,),

                      Column(
                        children: [
                          const SizedBox(height: 5,),
                          const CircleAvatar(

                            maxRadius: 50,
                            foregroundImage: AssetImage("assets/dash5.gif"),
                            backgroundColor: Colors.transparent,
                          ),
                          Text("Dash-5", style: TextStyle(fontSize: 20, color: Colors.blue.shade900),),
                        ],
                      ),

                    ],
                  ),
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
                color: Colors.blue,
                
                child: Container(
                  margin: const EdgeInsets.all(2), color: Colors.white,
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
                  borderRadius: const BorderRadius.all(
                      Radius.circular(20)),
                ),
                  child: const Text("Container 2", style: TextStyle(fontSize: 35),),
              ),

              const SizedBox(height: 50,),

              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(width: 2,color: Colors.blue),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30)),
                ),
                child: const Text("Container 3", style: TextStyle(fontSize: 35),),
              ),

              const SizedBox(height: 50,),
              
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: const BoxDecoration(
                  border: Border(
                    left: BorderSide(color: Colors.blue, width: 2.0,
                    ),),
                ),

                child: const Text("Container 4", style: TextStyle(fontSize: 34.0),),
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
                       } );
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













//-------------------------------------------------------------////-------------------------------------------------------------//
//--------------------- GestureDetector widget ------------//
//-------------------------------------------------------------////-------------------------------------------------------------//









//-------------------------------------------------------------//
// GestureDetector widget
/*
Like InkWell, it can turn any widget into a clickable widget.
But it has so many more features

It’s a widget that detects gestures.

If this widget has a child, it refers to that child for its sizing behavior. If it does not have a child, it grows to fit the parent instead.
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

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [

              GestureDetector(
                child: Image.asset("assets/dash.png"),

                onTap: (){
                  setState(()
                       {
                  inkwellText = "tapped";
                  inkwellTextColor = Colors.teal;
                       } );
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

/*
And, there are many many other features, like:
PROPERTIES
behavior
child
dragStartBehavior
excludeFromSemantics
hashCode
key
onDoubleTap
onDoubleTapCancel
onDoubleTapDown
onForcePressEnd
onForcePressPeak
onForcePressStart
onForcePressUpdate
onHorizontalDragCancel
onHorizontalDragDown
onHorizontalDragEnd
onHorizontalDragStart
onHorizontalDragUpdate
onLongPress
onLongPressCancel
onLongPressDown
onLongPressEnd
onLongPressMoveUpdate
onLongPressStart
onLongPressUp
onPanCancel
onPanDown
onPanEnd
onPanStart
onPanUpdate
onScaleEnd
onScaleStart
onScaleUpdate
onSecondaryLongPress
onSecondaryLongPressCancel
onSecondaryLongPressDown
onSecondaryLongPressEnd
onSecondaryLongPressMoveUpdate
onSecondaryLongPressStart
onSecondaryLongPressUp
onSecondaryTap
onSecondaryTapCancel
onSecondaryTapDown
onSecondaryTapUp
onTap
onTapCancel
onTapDown
onTapUp
onTertiaryLongPress
onTertiaryLongPressCancel
onTertiaryLongPressDown
onTertiaryLongPressEnd
onTertiaryLongPressMoveUpdate
onTertiaryLongPressStart
onTertiaryLongPressUp
onTertiaryTapCancel
onTertiaryTapDown
onTertiaryTapUp
onVerticalDragCancel
onVerticalDragDown
onVerticalDragEnd
onVerticalDragStart
onVerticalDragUpdate
runtimeType
supportedDevices
*/
//-------------------------------------------------------------//









//-------------------------------------------------------------////-------------------------------------------------------------//
//--------------------- RatingBar and RatingBarIndicator widget ------------//
//-------------------------------------------------------------////-------------------------------------------------------------//









//-------------------------------------------------------------//
// RatingBar widget
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

        body: Center( child:
          RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) =>
                const Icon( Icons.star, color: Colors.amber,),
            onRatingUpdate: (rating) {
              if (kDebugMode) { print(rating); }
            },
          ),
        ),

      ),
    );
  }
}
*/
//-------------------------------------------------------------//





//-------------------------------------------------------------//
// RatingBarIndicator widget
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

        body: Center( child:
        RatingBarIndicator(
          rating: 2.75,
          itemBuilder: (context, index) => const Icon(
            Icons.star, color: Colors.amber,),
          itemCount: 5,
          itemSize: 50.0,
          direction: Axis.horizontal,
        ),
        ),

      ),
    );
  }
}
*/
//-------------------------------------------------------------//







//-------------------------------------------------------------////-------------------------------------------------------------//
//--------------------- mini project, shopping app ------------//
//-------------------------------------------------------------////-------------------------------------------------------------//









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
/*
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
            backgroundColor: Colors.transparent,
            leading: const BackButton(color: Colors.black,),
            title: const Text("Shopping app", style: TextStyle(color: Colors.black),),
            actions: const [
              Icon(Icons.notifications, color: Colors.deepOrange),
              SizedBox(width: 15,)
            ],
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
*/
//-------------------------------------------------------------//

