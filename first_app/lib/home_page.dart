import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        backgroundColor: const Color.fromARGB(255, 149, 83, 123),
        foregroundColor: const Color.fromARGB(255, 205, 233, 237), 
        title: Text(
          "My To-Do List",
          style: GoogleFonts.lobster(fontSize: 26),
        ),
        actions:[
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip:"Add",
        elevation:50,
        child: const Icon(Icons.add),
      ),
      drawer:Drawer(
        child:ListView(
          children:[
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 149, 83, 123),
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  const CircleAvatar(
                    radius:25,
                    backgroundColor: Color.fromARGB(255, 238, 218, 237),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Name",
                    style:TextStyle(
                      color: const Color.fromARGB(179, 250, 250, 250),
                      fontSize:18,
                    ),
                  ),
                  Text(
                    "Email",
                    style:TextStyle(
                      color: const Color.fromARGB(179, 250, 250, 250),
                      fontSize:18,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.home),
              title: const Text("Home"),
            ),
            const Divider(),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.checklist),
              title: const Text("My Tasks"),
            ),
            ListTile(
              onTap: () {},
              leading:const Icon(Icons.person),
              title:const Text("Profile"),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          "No tasks yet!",
          textAlign:TextAlign.center,
          style:GoogleFonts.lobster(
            fontSize:20,
            color:const Color.fromARGB(179, 85, 11, 11),
          ),
        ),
      ),
    );
  }
}
