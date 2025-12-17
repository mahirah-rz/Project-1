import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>{

  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 149, 83, 123),
        foregroundColor: const Color.fromARGB(255, 205, 233, 237),
        title: Text(
          "My Profile",
          style: GoogleFonts.lobster(fontSize: 26),
        ),
        centerTitle: true,
      ),
      body:Center(
        child:Container(
          width:350,
          margin:const EdgeInsets.all(20),
          padding:const EdgeInsets.all(25),
          decoration:BoxDecoration(
            gradient:LinearGradient(
              colors:[
                const Color.fromARGB(255, 117, 31, 67),
                const Color.fromARGB(255, 241, 183, 216),
              ],
            ),
            border:Border.all(
              color: const Color.fromARGB(255, 120, 66, 62),
              width:3,
            ),
            borderRadius:BorderRadius.circular(20),
          ),
          child:Card(
            color: const Color.fromARGB(255, 241, 183, 216),
            shape:RoundedRectangleBorder(
              borderRadius:BorderRadius.circular(15),
              side:const BorderSide(
                color: Color.fromARGB(255, 120, 66, 62),
                width:2,
              ),
            ),
            child: Padding(
              padding:const EdgeInsets.all(20.0),
              child:Column(
                mainAxisSize:MainAxisSize.min,
                children:[
                  Stack(
                    alignment:Alignment.center,
                    children:[
                      CircleAvatar(
                        radius:60,
                        backgroundColor:const Color.fromARGB(255, 238, 218, 237),
                        child: const Icon(
                          Icons.person,
                          size: 50,
                          color: Color.fromARGB(255, 149, 83, 123),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 149, 83, 123),
                            shape: BoxShape.circle,
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                 TextFormField(
                    decoration: InputDecoration(
                      labelText:"Name",
                      labelStyle: const TextStyle(
                        color: Color.fromARGB(255, 149, 83, 123),
                        fontWeight:FontWeight.bold,
                      ),
                      hintText:"Enter your name",
                      hintStyle: const TextStyle(
                        color:Color.fromARGB(150, 149, 83, 123),
                      ),
                      prefixIcon:const Icon(
                        Icons.person_outline,
                        color: Color.fromARGB(255, 149, 83, 123),
                      ),
                      border: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(12),
                        borderSide:const BorderSide(
                          color: Color.fromARGB(255, 149, 83, 123),
                          width:2,
                        ),
                      ),
                      focusedBorder:OutlineInputBorder(
                        borderRadius:BorderRadius.circular(12),
                        borderSide:const BorderSide(
                          color: Color.fromARGB(255, 205, 233, 237),
                          width:3,
                        ),
                      ),
                      filled:true,
                      fillColor: Colors.white,
                    ),
                  ),

                  SizedBox(height: 20),

                  SizedBox(
                    width:double.infinity,
                    height:40,
                    child:ElevatedButton(
                      onPressed: () {
                        setState(() {
                        errorMsg = null;
                        if (nameController.text.isEmpty) {
                          errorMsg = "Field is empty";
                        } else {
                          name = nameController.text;
                        }
                      });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 149, 83, 123),
                        foregroundColor: const Color.fromARGB(255, 205, 233, 237),
                        shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(15),
                          side: const BorderSide(
                            color: Color.fromARGB(255, 120, 66, 62),
                            width:2,
                          ),
                        ),
                      ),
                      child:Text(
                        "Submit",
                        style:GoogleFonts.lobster(
                          fontSize:18,
                          fontWeight:FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

}
