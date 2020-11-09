import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';


void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: new IconThemeData(color: Colors.black),
        actions: [
          Center(
            child: GFIconBadge(
              child: GFIconButton(
                color: Colors.white,
                onPressed: (){},
                icon: Icon(Icons.notifications_active,color: Colors.black,),
                shape: GFIconButtonShape.standard,
                size: GFSize.LARGE,

              ),
              counterChild: GFBadge(
                child: Text("12"),
              ),
            ),
          ),
          IconButton(icon: Icon(Icons.filter_center_focus, color:Colors.black),
            onPressed: () {},
          ),
        ],
        title: Text('Argus Homes',
          style: TextStyle(color: Colors.black,),
        ),
        centerTitle: true,
      ),
      drawer: GFDrawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            GFDrawerHeader(
              currentAccountPicture: GFAvatar(
                radius: 80.0,
                backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg"),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('user name'),
                  Text('user@userid.com'),
                ],
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: null,
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: null,
            ),
          ],
        ),
      ),
      body:GFTabBarView(controller: tabController, children: <Widget>[
        Container(color: Colors.red,
        child: Column(
          children: [
            Container(child: GFListTile(
                avatar:GFAvatar(),
                titleText:'Title',
                subtitleText:'Lorem ipsum dolor sit amet, consectetur adipiscing',
              onTap: (){},
            ),),
            Container(child: GFListTile(
              avatar:GFAvatar(),
              titleText:'Title',
              subtitleText:'Lorem ipsum dolor sit amet, consectetur adipiscing',
            ),),
          ],
        ),
        ),
        Container(color: Colors.green),
        Container(color: Colors.blue)
      ]),
      bottomNavigationBar: GFTabBar(
        // initialIndex: 0,
        tabBarHeight: 53.0,
        tabBarColor: Colors.black,
        length: 3,
        controller: tabController,
        tabs: [
          Tab(
            icon: Icon(Icons.payment,color:Colors.white,),
            child: const Text(
              'Payment',
            ),
          ),
          Tab(
            icon: Icon(Icons.accessibility_new,color:Colors.white,),
            child: const Text(
              'Amenities',
            ),
          ),
          Tab(
            icon: Icon(Icons.record_voice_over,color:Colors.white,),
            child: const Text(
              'Complaints',
            ),
          ),
        ],
      ),
      // GFTabs(
      //   initialIndex: 0,
      //   tabBarColor: Colors.grey[500],
      //   length: 3,
      //   tabs: <Widget>[
      //     Tab(
      //       icon: Icon(Icons.payment),
      //       child: Text(
      //         "Payments",
      //       ),
      //     ),
      //     Tab(
      //       icon: Icon(Icons.accessibility_new),
      //       child: Text(
      //         "Amenities",
      //       ),
      //     ),
      //     Tab(
      //       icon: Icon(Icons.record_voice_over),
      //       child: Text(
      //         "Complaints",
      //       ),
      //     ),
      //   ],
      //
      // ),
      // drawer: Drawer(
      //   child:ListView(
      //     children: [
      //       new UserAccountsDrawerHeader(
      //         accountName: new Text('Name'),
      //         accountEmail: new Text('Email'),
      //         currentAccountPicture: new CircleAvatar(
      //           backgroundColor: Colors.white,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      // body: GFTabBarView(controller: tabController, children: <Widget>[
      //   Container(color: Colors.red),
      //   Container(color: Colors.green),
      //   Container(color: Colors.blue)
      // ]),
      // bottomNavigationBar: GFTabBar(
      //   initialIndex: 0,
      //   length: 3,
      //   controller: tabController,
      //   tabs: [
      //     Tab(
      //       icon: Icon(Icons.directions_bike),
      //       child: const Text(
      //         'Tab1',
      //       ),
      //     ),
      //     Tab(
      //       icon: Icon(Icons.directions_bus),
      //       child: const Text(
      //         'Tab2',
      //       ),
      //     ),
      //     Tab(
      //       icon: Icon(Icons.directions_railway),
      //       child: const Text(
      //         'Tab3',
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
