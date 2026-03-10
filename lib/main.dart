import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedindex = 0;
  late List<Widget> listitem = [
    Builder(
      builder: (context) {
        return Column(
          children: [
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  final snackbar = SnackBar(
                    content: ListTile(
                      title: Text(
                        "This is a SnackBar!",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      trailing: TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        },
                        child: Text(
                          "UNDO",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: .bold,
                          ),
                        ),
                      ),
                    ),
                    backgroundColor: Colors.teal.shade400,
                    duration: Duration(seconds: 10),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                },

                child: Row(
                  mainAxisAlignment: .spaceEvenly,
                  children: [
                    Icon(Icons.chat, color: Colors.deepPurple),
                    Text(
                      "Show SnackBar",
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text(
                          "Alert Dialog",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: .bold,

                          ),
                        ),
                        content: Text(
                          "Are you sure you want to proceed?",
                          style: TextStyle(fontSize: 17),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                color: Colors.deepPurple,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                            ),
                            child: Text(
                              "Yes",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Row(
                  mainAxisAlignment: .spaceEvenly,
                  children: [
                    Icon(Icons.warning, color: Colors.deepPurple),
                    Text(
                      "Show AlertDialog",
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        width: double.infinity,
                        height: 350,
                        child: Column(
                          crossAxisAlignment: .center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                right: 210,
                              ),
                              child: Text(
                                "Modal BottomSheet",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: .bold,

                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 15,
                                bottom: 120,
                              ),
                              child: Text(
                                "This is a bottom sheet that blocks the rest of the screen until closed",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: .bold,

                                ),
                              ),
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  "Cancel",
                                  style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontWeight: .bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Row(
                  mainAxisAlignment: .spaceEvenly,
                  children: [
                    Icon(Icons.arrow_upward_outlined, color: Colors.deepPurple),
                    Text(
                      "Show BottomSheet",
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    ),

    Text(
      "Profile Screen",
      style: TextStyle( fontWeight: .bold, fontSize: 23),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal.shade400,
          foregroundColor: Colors.white,
        ),

      ),

      darkTheme: ThemeData(
        brightness: Brightness.dark,

        primaryColor: Colors.black,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),

      ),

      themeMode: ThemeMode.system,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Text(
                  "Flutter Advanced UI",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: .bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.touch_app, color: Colors.white),
                  child: Text("Pop-ups", style: TextStyle(color: Colors.white)),
                ),
                Tab(
                  icon: Icon(Icons.info, color: Colors.white),
                  child: Text("Info", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            iconTheme: IconThemeData(color: Colors.white),
          ),
          drawer: Drawer(child:
            Column(
              crossAxisAlignment: .start,
              children: [
                DrawerHeader(child:
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.teal.shade400,
                    size: 35,
                  ),
                  radius: 35,
                ),


                ),

                Text(
                  "Welcome User",
                  style: TextStyle(

                    fontWeight: .bold,
                    fontSize: 20,
                  ),
                ),

                ListTile(


                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),

              ],
            ),
          ),

          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedindex,
            onTap: (val) {
              setState(() {
                selectedindex = val;
              });
            },

            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
              ),
            ],
          ),
          body: TabBarView(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [listitem[selectedindex]],
                ),
              ),
              Center(
                child: Text(
                  "This is the Info Tab",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
