import 'package:flutter/material.dart';
import 'package:untitled/features/menu_information_comment/presentation/widgets/comment_page.dart';
import 'package:untitled/features/menu_information_comment/presentation/widgets/informatiom.dart';
import 'package:untitled/features/menu_information_comment/presentation/widgets/menu_page_widget.dart';

class Topbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
     DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.directions_transit)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
            CommentPage(),
             InformatiomPage(),
            MenuPageWidget()
              
              ],
            ),
          ),
        ],
      ),
    );
  
  }
}