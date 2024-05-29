import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Center(
          //now below we will study about the listView.Builder widget...
          child: ListView.builder(
              // we also have one parameter in this widget i.e. itemcount without it, it will take infinite count...
              itemCount: 10,
              itemBuilder: (context, index) {
                // return Text("hello");
                return ElevatedButton(
                    onPressed: () {
                      // print("hello i anurag "); // this will print the hello i anurag koi bhi button dabane pe..
                      // but now we will see the concept of index i.e. jab jo number ka button dabayenge tab vo print karega index of button pressed..
                      print(index); //indexing start from 0,1,2, and so on....
                    },
                    child: Text("hello world"));
              }),

          /*child: ListView(
            children: [
              Text("Apple"),
              Text("Strawberry"),
              Text("Pikachoo"),
              Text("Pineapple"),
              Text("Banana"),
            ],
          ),
          */ // list view simple explanation
          // now we have to study two most important widget i.e. list view and list view builder.....
          // column and list view are similar... difference is that in column we give height and there is a chances of overflow...
          // but in case of list view the list will not overflow example is below... i..e pichle wale ko copy
          // then wrap with container and uske andar list view

          /*
          child: Container(
            width: 200,
            height: 200,
            color: Colors.deepOrangeAccent,
            child: ListView( //agar hum Column widget use karenge on place of ListView then bahut sare overflow ho jayenge list element...
              // column me list elements fixed dikhte hai as per size but in list view we can scroll...
             // list view take the fuller length but the column will take the length of the container widget....

              children: [
                Text("Apple"),
                Text("Strawberry"),
                Text("Pikachoo"),
                Text("Pineapple"),
                Text("Banana"),
                Text("Apple"),
                Text("Strawberry"),
                Text("Pikachoo"),
                Text("Pineapple"),
                Text("Banana"),
                Text("Apple"),
                Text("Strawberry"),
                Text("Pikachoo"),
                Text("Pineapple"),
                Text("Banana"),
                Text("Apple"),
                Text("Strawberry"),
                Text("Pikachoo"),
                Text("Pineapple"),
                Text("Banana"),
                Text("Apple"),
                Text("Strawberry"),
                Text("Pikachoo"),
                Text("Pineapple"),
                Text("Banana"),
                Text("Apple"),
                Text("Strawberry"),
                Text("Pikachoo"),
                Text("Pineapple"),
                Text("Banana"),
              ],
            ),
          ),

          */ // explanation of list view widget and also difference between list view and column....

          /*
          child: GestureDetector(
            onTap: () {
              //here we write our logic or event...
              print("clicked");
            },
            onLongPress: () {
              print("it is long press");
            },
            child: Container(
              width: 200,
              height: 200,
              color: Colors.pinkAccent,
            ),
          ),
          */ // here is gesture detector widget explantion....
          //now we will study about gesture ditector widget...this is because most of the widget do not have on pressed i.e. user clicked the
          // the widget it can not detect that user  clicked  it so for that we will use gesture widget.

          /*
         // child:  Image.network('https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_320,q_50/lsci/db/PICTURES/CMS/323000/323036.png'),
         // child: Image.asset('assets/images/anonymus-hacker-computer-mask-wallpaper-preview.jpg'),
          //asset is used when photo is inside our project and network is used when we want to add image from internet...
          */ //here is an image widget explanation....
          /*  child: IconButton(onPressed:()
          { print("Hello World"); },
         icon: Text("it is an icon button"),), */ // explanation of IconButton....
          /* child: TextButton(
            onPressed: ()
            { print("Hello how are you?");
              },
            child: Text("A Text Button here"),),
          */ // explantion of TextButton....
          /* child: ElevatedButton(
            onPressed: () {
              print('button is being clicked');
              },
            child: Text('Click'),
          ),
            */ // explanation of Elevated button...
        ),

        /*  child: Center(
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(width: 1),
                borderRadius:  BorderRadius.all(Radius.circular(50)),
              ),
               hintText: 'Enter your name here',
              helperText: 'Your Name',
              prefix: Icon(Icons.phone),

            ),
          ),
        ),
        */ //it is an explanation of TextField Widget....

        //here safe area is parent widget.. to make child widget at center of parent wrap it with widget called center...

        /* child: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.green,
            child: Center(child: Text("Anurag Yadav")),
          ),
        ),

*/

        /*   child:Container(
              width: double.maxFinite,
              height: double.maxFinite,
              /* child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.deepOrange,
                  width: 150,
                  height: 100,
                ),
                const SizedBox(
                  width: 20,
                  height: 20,
                ),
                Container(
                  color: Colors.white,
                  width: 150,
                  height: 100,
                ),
                const SizedBox(
                  width: 20,
                  height: 20,
                ),
                Container(
                  color: Colors.green,
                  width: 150,
                  height: 100,
                ),
              ],

                        ),

              */ // this is a column widget explanation now we will study Row Widget.
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  Flexible(
                    child: Container(
                      width: 200,
                        height: 200,
                      color: Colors.deepOrange,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                    height: 20,
                  ),
                  Expanded(
                    child: Container(
                      width: 200,
                      height: 200,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                    height: 20,
                  ),
                  Expanded(
                    child: Container(
                      width: 200,
                      height: 200,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),),
      */ // here is an explanation of column, row, expanded , flexible.
      ),
    );
  }
}
//##Till now we also did expanded widget and Flexible Widget...

// since in column widget we have access to all page vertically but not horizontal all it will take that much space as
// specified by the width and  height therefore to use all space horizontally we add one container jiske andar column ko likhenge .
// two techniques to do it one wrap with container column ko and 2nd is cut column and create new container and paste column.
/*
         child: Container(
            padding:const EdgeInsets.all(20.25) ,
            color: Colors.pinkAccent,
            width: 200,
            height: 200,
            child: Text("Anurag Yadav"),
          ),
          //thus now we will replace this container with column widget to have multiple children..
          */
// error aayega ye karne pe child: Container(),
// because   The error occurs because a widget can only have one child property. In your code, you are attempting to assign two child properties to the Center widget, which is not allowed.
// If you want to display two Container widgets, you should use a layout widget that can hold multiple children, such as Column, Row, or Stack. Here’s how you can use a Column to layout the two Container widgets vertically:

//to create stateless widget you need to write stl and just enter and also give the name of the widget....
// to create stateful widget you need to write stf and just enter and also give the name of the widget....
//in stateless widget we have only one method but in stateful widget we have some extra code...
//difference between stateless and stateful widget...
// shortcut to convert stateless widget into stateful widget i.e. done....
// i.e. after converting into stateful build ke andar jo code hai / methods /variables hai move into state + and add
// i.e. when you want to change the value  to variable / ui you need to call the setState() method
// imp setState only available in stateful widget there is nothing in stateless widget..
// now u will think we need only stateful widget but in stateless we can also change with the help of state management.
// widget is the basic block of the flutter.

//#####  WIDGET CONCEPT STARTS HERE #####
//1.Scaffold it is the basic work area of application.
