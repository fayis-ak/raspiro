import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
   Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
 body: Container(
       
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration:  BoxDecoration(
              // color: Colors.red,
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/shafeeq.jpg",
                  ),
                  fit: BoxFit.cover)
                  
                  ),
               child:  Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.skip_previous_outlined),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Text("Resellers Profile",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: CircleAvatar(radius: 50,
                      backgroundImage: AssetImage("assets/images/profile.png",),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 45),
                    child: Container(
                      height: 45,
                      width: 299,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          
                      ),
                      child: Center(child: Text("Jobil",style: TextStyle(fontSize: 18),)),
                     
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      height: 45,
                      width: 299,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          
                      ),
                      child: Center(child: Text("Jobil@gmail.com",style: TextStyle(fontSize: 18),)),
                     
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      height: 45,
                      width: 299,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          
                      ),
                      child: Center(child: Text("3265987456",style: TextStyle(fontSize: 18),)),
                     
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      height: 45,
                      width: 299,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          
                      ),
                      child: Center(child: Text("pg",style: TextStyle(fontSize: 18),)),
                     
                    ),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      height: 45,
                      width: 299,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          
                      ),
                      child: Center(child: Text("3 yearexp",style: TextStyle(fontSize: 18),)),
                     
                    ),
                  ),
                                   

                  

                ],
               ),
            
        ),
        
 
 
    );
  }
}