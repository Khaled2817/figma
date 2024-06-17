// import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
// import 'package:untitled/core/widget/appBar_container.dart';
// import 'package:untitled/features/add_order/presentation/widgets/widget_appBar.dart';
// import 'package:untitled/features/menu_information_comment/presentation/widgets/comment_page.dart';
// import 'package:untitled/features/menu_information_comment/presentation/widgets/informatiom.dart';
// import 'package:untitled/features/menu_information_comment/presentation/widgets/menu_page_widget.dart';
// import 'package:untitled/features/menu_information_comment/presentation/widgets/topbar.dart';
// import 'package:untitled/features/menu_information_comment/presentation/widgets/wrap_comment.dart';

// class MenuPage extends StatelessWidget {
//   const MenuPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         bottom: TabBar(
//       tabs: [
//         Tab(icon: Icon(Icons.directions_car)),
//         Tab(icon: Icon(Icons.directions_transit)),
//         Tab(icon: Icon(Icons.directions_bike)),
//       ],
//     ),
//         toolbarHeight: 23.h,
//         actions: [Container(
//         child: AppBarrContainer(
//                 height: 23.h,
//                 color1: Color(0xff22112E),
//                 color2: Color(0xff3E1B58),
//                 widget: WidgetAppbar(),
//               ),
//       )],),
//       backgroundColor: Colors.white,
//   //backgroundColor: Color.fromARGB(255, 242, 238, 238),
//       body: TabBarView(
//     children: [
//       Icon(Icons.directions_car),
//       Icon(Icons.directions_transit),
//       Icon(Icons.directions_bike),
//     ],
//   ),);
// }}

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/core/widget/appBar_container.dart';
import 'package:untitled/features/add_order/presentation/widgets/widget_appBar.dart';
import 'package:untitled/features/menu_information_comment/presentation/widgets/comment_page.dart';
import 'package:untitled/features/menu_information_comment/presentation/widgets/informatiom.dart';
import 'package:untitled/features/menu_information_comment/presentation/widgets/menu_page_widget.dart';

class MenuPage extends StatefulWidget {
  @override
  _TabBarExampleState createState() => _TabBarExampleState();
}

class _TabBarExampleState extends State<MenuPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5.w,
        toolbarHeight: 25.h,
       actions: [
 AppBarrContainer(
                height: 23.h,
                color1: Color(0xff22112E),
                color2: Color(0xff3E1B58),
                widget: WidgetAppbar(),
              ),

       ],
        bottom: TabBar(

          controller: _tabController,
          tabs: [
            Tab(icon: Text("commentes")),
            Tab(icon: Text("information")),
            Tab(icon: Text("menu")),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CommentPage(),
         InformatiomPage(),
          MenuPageWidget(),
          
        ],
      ),
    );
  }
}