import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:popup_dialouge/Popup%20dialouge/popup_screen.dart';
import 'package:popup_dialouge/Popup%20dialouge/extra/test_main.dart';
import 'package:timelines_plus/timelines_plus.dart';
import 'extra/journey_list.dart';
import 'package:dash/dash.dart';
import 'package:draggable_scrollbar/draggable_scrollbar.dart';

import 'main_content.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // designSize: Size(430, 932),
      designSize: Size(400, 800),
      builder: (context,child){
        return MaterialApp(
          title: "Pop Up",
          home: HomePage(),
        );
      },
    );
  }
}


class ScrollWithStickyHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  CustomScrollView(
        slivers: <Widget>[
          /// First container - scrolls away
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text(
                'First Container',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),

          /// Second container - sticky header
          SliverStickyHeader(
            header: Container(
              height: 100,
              color: Colors.green,
              alignment: Alignment.center,
              child: Text(
                'Second Container (Sticky)',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) => ListTile(
                  title: Text('Item #$index'),
                ),
                childCount: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


//
// class MyScrollPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           // (1) Disappearing AppBar with FlexibleSpace
//           SliverAppBar(
//             automaticallyImplyLeading: false,
//             backgroundColor: Colors.blue,
//             elevation: 0,
//             toolbarHeight: 0,
//             collapsedHeight: 0,
//             expandedHeight: 130,
//             pinned: false,
//             flexibleSpace: FlexibleSpaceBar(
//               background: Center(
//                 child: Text(
//                   "Disappearing Header",
//                   style: TextStyle(fontSize: 24, color: Colors.white),
//                 ),
//               ),
//             ),
//           ),
//
//           // (2) Sticky/Pinned Header
//           SliverPersistentHeader(
//             pinned: true,
//             delegate: MyHeaderDelegate(),
//           ),
//
//           // (3) Main Content (does not scroll under header)
//           SliverToBoxAdapter(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Container(
//                 height: 1200, // Make it tall to show scrolling
//                 color: Colors.amber,
//                 child: Center(
//                   child: Text(
//                     "Main Content Scrolls Below Sticky Header",
//                     style: TextStyle(fontSize: 18),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// // Sticky Header Delegate
// class MyHeaderDelegate extends SliverPersistentHeaderDelegate {
//   @override
//   Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return Container(
//       color: Colors.green,
//       alignment: Alignment.center,
//       child: Text(
//         "Sticky Header",
//         style: TextStyle(fontSize: 20, color: Colors.white),
//       ),
//     );
//   }
//
//   @override
//   double get maxExtent => 60;
//
//   @override
//   double get minExtent => 60;
//
//   @override
//   bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => false;
// }
//


// class DisappearOnScrollExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           /// Upper widget that disappears on scroll
//           SliverAppBar(
//             backgroundColor: Colors.blue,
//             expandedHeight: 180,
//             floating: false,
//             pinned: false,
//             snap: false,
//             automaticallyImplyLeading: false,
//             flexibleSpace: FlexibleSpaceBar(
//               background: Center(
//                 child: Text(
//                   "I disappear on scroll 👋",
//                   style: TextStyle(fontSize: 22, color: Colors.white),
//                 ),
//               ),
//             ),
//           ),
//
//           /// Remaining content (your 2nd & 3rd widgets)
//           SliverToBoxAdapter(
//             child: Column(
//               children: [
//                 Container(
//                   height: 400,
//                   color: Colors.orange[100],
//                   alignment: Alignment.center,
//                   child: Text(
//                     "Second Widget",
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ),
//                 Container(
//                   height: 400,
//                   color: Colors.green[100],
//                   alignment: Alignment.center,
//                   child: Text(
//                     "Third Widget",
//                     style: TextStyle(fontSize: 20),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (_) => PopupScreen(),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}










