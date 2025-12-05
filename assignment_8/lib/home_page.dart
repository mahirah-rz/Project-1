import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 149, 83, 123),
        foregroundColor: const Color.fromARGB(255, 205, 233, 237),
        title: Text(
          "My To-Do List",
          style: GoogleFonts.lobster(fontSize: 26),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add",
        elevation: 50,
        child: const Icon(Icons.add),
      ),
      drawer: Drawer(
        child: ListView(
          
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 149, 83, 123),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius:25,
                    backgroundColor: Color.fromARGB(255, 238, 218, 237),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Name",
                    style: TextStyle(
                      color: const Color.fromARGB(179, 250, 250, 250),
                      fontSize:18,
                    ),
                  ),
                  Text(
                    "Email",
                    style: TextStyle(
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
              onTap: () {
                Navigator.pop(context); // Close drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
             ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child:Center(
        child: Container(
          height:800,
          width: 550,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color.fromARGB(255, 117, 31, 67), const Color.fromARGB(255, 241, 183, 216)],
            ),
            border: Border.all(color: const Color.fromARGB(255, 120, 66, 62), width: 5),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            children: [
              Text(
                "Lets Complete Some Tasks!",
                style: GoogleFonts.lobster(textStyle: TextStyle(fontSize: 24)),
              ),

              Image.asset(
               'assets/images/download.png',
                 height:200,
                fit: BoxFit.fill,
               ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 241, 187, 168),
                        foregroundColor: Colors.white,
                        fixedSize: Size(120, 20),
                      ),
                      child: Text("Daily"),
                    ),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.brown,
                        foregroundColor: Colors.white,
                         fixedSize: Size(120, 20),
                      ),
                      child: Text("Weekly"),
                    ),
                    OutlinedButton(onPressed: () {},
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.brown,
                        foregroundColor: Colors.white,
                         fixedSize: Size(120, 20),
                      ),
                    child: Text("Monthly"),
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 20),
              Container(
              height: 100, width: 100,
               color: const Color.fromARGB(255, 236, 142, 184),
               child: Text("       Lets go!"),
               ),
              
            ],
          ),
        ),
      ),
      ),
    );
  }
}




