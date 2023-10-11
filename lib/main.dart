import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner:false,
        home: FirstScreen());
  }
}
class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: Text("courses"),
        actions: [
          IconButton(icon: Icon(Icons.camera_alt_outlined), onPressed: () {},),
          IconButton(icon: Icon(Icons.search), onPressed: () {},),
          IconButton(icon: (Icon(Icons.more_vert)), onPressed: () {},)
        ],
        bottom: TabBar
          (controller: _tabController,
          tabs: [Tab(text: 'Chats',),
            Tab(text: 'Status',),
            Tab(text: 'Calls',),
            Tab(text: 'Groups',)],
        ),
      ),body: ListView(children: [
    ListTile(leading: Icon(Icons.ac_unit),
      title: Text("deepthi"),subtitle: Text("hello"),trailing: Text("02:27"),
      tileColor: Colors.white70,
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)) ,),
    Divider(height: 5,),
      ListTile(leading: Icon(Icons.ac_unit),
        title: Text("deepthi"),subtitle: Text("hello"),trailing: Text("02:27"),
        tileColor: Colors.white70,
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)) ,),
      Divider(height: 5,),
      ListTile(leading: Icon(Icons.ac_unit),
        title: Text("deepthi"),subtitle: Text("hello"),trailing: Text("02:27"),
        tileColor: Colors.white70,
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)) ,),
      Divider(height: 5,),
      ListTile(leading: Icon(Icons.ac_unit),
        title: Text("deepthi"),subtitle: Text("hello"),trailing: Text("02:27"),
        tileColor: Colors.white70,
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)) ,),
      Divider(height: 5,),
      ListTile(leading: Icon(Icons.menu,),

        title: Text("deepthi"),subtitle: Text("hello"),trailing: Text("02:27"),
        tileColor: Colors.white70,
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)) ,),
      Divider(height: 5,),
    ],),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}