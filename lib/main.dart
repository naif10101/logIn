import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,//هذا الخط الي يجي فوق مخرب الشاشه
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: AppBar(
        backgroundColor: Color(0xFF00796B),
        centerTitle: true,
        title: Text(
          "Login Screen",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),

      //  leading: IconButton(
      //   icon: Icon(Icons.  ,color: Colors.white,),
      //   onPressed: () {

      //   },
      //  ),

        actions: [
          IconButton(
            icon: Icon(Icons.menu,color: Colors.white,),
            onPressed: () {
              // أضف هنا ما ترغب في تنفيذه عند الضغط على الأيقونة
            },
         
      ),

        //  IconButton(
        //   icon: Icon(Icons.search,color:Colors.white),
        //   onPressed: () {
            
        //   },
        //  )
      ],

      ),
   
  
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/test2.jpg',
              height: 350,
              width: 350,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text("Enter Email"),
                     labelStyle: TextStyle(color: Color(0xFF00796B)),

                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(borderSide: BorderSide()),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),

                 TextFormField(
                  obscureText: true,
                    decoration: const InputDecoration(
                      label: Text("Enter Password"),
                     labelStyle: TextStyle(color: Color(0xFF00796B)),

                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(borderSide: BorderSide()),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),

                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      label: Text("Enter confirm Password"),
                   labelStyle: TextStyle(color: Color(0xFF00796B)),

                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(borderSide: BorderSide()),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Color(0xFF00796B),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "LOGIN",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                        
                          
                            ),
                            ),
                            SizedBox(width: 10,),
                            Icon(
                            Icons.login,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}