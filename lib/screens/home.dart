import 'package:flutter/material.dart';
import 'package:to_do_list_application/constants/colors.dart';
import 'package:to_do_list_application/widgets/listBox.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home>{
  //store data for to do list
  //final List<String> toDoList = <String>[];

  List<String> listItems = []; //empty list to add to later

  //use textController to get typed user input
  final textController = TextEditingController();
  //stores user input for task entries
  String taskEntry = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: buildAppBar(),

      body:
      Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ Expanded(

            child: ListView(
                children: <Widget>[
                //Task Entries
                //create new list

                  Container(
                      margin: EdgeInsets.only(top: 25,),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        tileColor: Colors.indigo[400],
                        leading: Icon(Icons.check_box_outline_blank_rounded, color: Colors.white,),

                        title: Text('Do laundry', //sets user input to list entry
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,

                            //decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ),
                    ),



                  Container(
                    margin: EdgeInsets.only(top: 25,),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      tileColor: Colors.indigo[400],
                      leading: Icon(Icons.check_box_outline_blank_rounded, color: Colors.white,),

                      title: Text('Finish Paperwork', //sets user input to list entry
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          //decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 25,),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      tileColor: Colors.indigo[400],
                      leading: Icon(Icons.check_box_outline_blank_rounded, color: Colors.white,),

                      title: Text('Send out emails', //sets user input to list entry
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          //decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 25,),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      tileColor: Colors.indigo[400],
                      leading: Icon(Icons.check_box_outline_blank_rounded, color: Colors.white,),

                      title: Text('Visit friends at the end of the week', //sets user input to list entry
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          //decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ),
                  ),

                    Container(
                      margin: EdgeInsets.only(top: 25,),
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        tileColor: Colors.indigo[400],
                        leading: Icon(Icons.check_box_outline_blank_rounded, color: Colors.white,),

                        title: Text(taskEntry, //sets user input to list entry
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            //decoration: TextDecoration.lineThrough,
                          ),
                        ),

                      ),
                    ),


              ],  //children

            ),
          ),],
        ),
      ),

      //'Add New List/+Button'
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:
          //this container is to increase the +button size
      Container(
        height: 70,
        width: 70,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () => showDialog<String>(
              context: context,
              //building the pop up to create tasks
              builder: (BuildContext context) => AlertDialog(
                title: const Center(
                  child: Text('Enter Your New Task')
                ),

                //First Box: enter task title here
                content: TextField(
                  controller: textController,
                  decoration: InputDecoration(
                    hintText: 'Task Name',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                      onPressed: () {textController.clear();}, //clear task entry
                      icon: const Icon(Icons.clear_rounded),),
                  ),
                ),

                actions: <Widget>[
                  TextButton(
                    onPressed: () { setState(() {
                      Navigator.pop(context, 'Cancel');
                      textController.clear(); //delete entry from Dialog Box
                    });},
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () { setState(() {
                      //addListItem(textController.text); //add user input to List
                      taskEntry = textController.text;  //send user input to output
                      Navigator.pop(context, 'Save'); //exits Dialog Box
                      textController.clear(); //delete entry from Dialog Box


                    });
                    },
                    child: const Text('Save'),
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.indigo[400],
            child: const Icon(Icons.add),
          ),
        ),
      ),

    );

  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.indigo[400],
      centerTitle: true,
      title: Text('What is Next on the To-Do List?',
        style: TextStyle(
        fontSize: 20,
        color: Colors.white,),),
      elevation: 0,
    );
  }

 /* //add data to to-do list
  void addListItem(String title) {
    setState(() {
      toDoList.add(title);
    });
    textController.clear();
  }

  //populate ListView
  Widget buildListItem(String title) {
    return ListTile(title: Text(title));
  }

  //iterate through to-do list
  List<Widget> getItem() {
    final List<Widget> listWidgets = <Widget>[];
    for (String title in toDoList) {
      listWidgets.add(buildListItem(title));
    }
    return listWidgets;
  } */

}