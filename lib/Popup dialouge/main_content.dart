import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:popup_dialouge/Popup%20dialouge/list_widgets.dart';
import 'package:popup_dialouge/Popup%20dialouge/parts.dart';


class MainContent extends StatefulWidget {
  const MainContent({super.key});

  @override
  State<MainContent> createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  @override
  Widget build(BuildContext context) {

    return Container(
      //padding: EdgeInsets.only(top: 24, left: 24, bottom: 24, right: 15),
    height: 621.h,
    width: 312.w,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xffFAF0E8)
    ),

    child: Column(
      children: [

        //Upper Part
        Padding(
          padding: EdgeInsets.only(top: 24, left: 24, bottom: 6, right: 15),
          child: Column(
            children: [
              TextContent(),
              WhiteBox("New Journey"),
              SizedBox(height: 2.h,),
            ],
          ),
        ),

        //New journey white container

        //Journey List scrollable container
        Expanded(
          child: ScrollbarTheme(
            data: ScrollbarThemeData(
              thumbColor: MaterialStateProperty.all(Colors.grey.shade400),
              trackColor: MaterialStateProperty.all(Colors.white),
              trackBorderColor: MaterialStateProperty.all(Colors.transparent),
              thickness: MaterialStateProperty.all(6.0),
              radius: Radius.circular(10.0),
            ),
            child: Scrollbar(
              thumbVisibility: true,
              trackVisibility: true, // Required to show the track
              interactive: true,
              child: SingleChildScrollView(
                child: ScrollableTimelineBox(),
              ),
            ),
          ),
        )

      ],
    ),
        );
  }
}


//
// //Chatgpt version (Inside Scrollbar)
// class MainContent extends StatefulWidget {
//   const MainContent({super.key});
//
//   @override
//   State<MainContent> createState() => _MainContentState();
// }
//
// class _MainContentState extends State<MainContent> {
//   final ScrollController _scrollController = ScrollController();
//
//   @override
//   void dispose() {
//     _scrollController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 621.h,
//       width: 312.w,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         color: const Color(0xffFAF0E8),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(24),
//         child: Column(
//           children: [
//             Text(
//               "Add parcel to your route?",
//               style: TextStyle(
//                 fontSize: 22.sp,
//                 fontStyle: FontStyle.normal,
//                 fontWeight: FontWeight.w600,
//                 color: const Color(0xffCD4E00),
//               ),
//             ),
//             SizedBox(height: 16.h),
//             Text(
//               "Please review the new journey of this parcel if you add it to yours.",
//               style: TextStyle(
//                 fontSize: 14.sp,
//                 fontStyle: FontStyle.normal,
//                 fontWeight: FontWeight.w400,
//                 letterSpacing: 0.25.sp,
//               ),
//             ),
//             SizedBox(height: 16.h),
//             RichText(
//               text: TextSpan(
//                 children: [
//                   TextSpan(
//                     text: 'Not sure? ',
//                     style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                       color: Colors.black,
//                       fontSize: 14.sp,
//                     ),
//                   ),
//                   TextSpan(
//                     text: 'Please confirm with your Operations Manager before proceeding.',
//                     style: TextStyle(
//                       fontWeight: FontWeight.normal,
//                       color: Colors.black,
//                       fontSize: 14.sp,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 16.h),
//             const DottedLine(
//               dashColor: Color(0xffEFD7C3),
//             ),
//             SizedBox(height: 16.h),
//             Align(
//               alignment: Alignment.centerLeft,
//               child: Text(
//                 "Parcel barcode",
//                 style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10.sp),
//               ),
//             ),
//             SizedBox(height: 5.h),
//             Align(
//               alignment: Alignment.centerLeft,
//               child: Text(
//                 "123456klh90",
//                 style: TextStyle(
//                   fontWeight: FontWeight.w600,
//                   fontSize: 16.sp,
//                   color: const Color(0xff148D14),
//                 ),
//               ),
//             ),
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 14),
//                   child: Row(
//                     children: [
//                       const Icon(Icons.person),
//                       SizedBox(width: 6.w),
//                       Text(
//                         "CNH inustrial",
//                         style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(width: 8.w),
//                 const Padding(
//                   padding: EdgeInsets.only(top: 12.0),
//                   child: Text("|"),
//                 ),
//                 SizedBox(width: 8.w),
//                 Expanded(
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Padding(
//                         padding: EdgeInsets.only(top: 12.0),
//                         child: Icon(Icons.location_on_outlined, size: 20, color: Color(0xFF0E3B2C)),
//                       ),
//                       SizedBox(width: 6.w),
//                       Expanded(
//                         child: Padding(
//                           padding: const EdgeInsets.only(top: 12.0),
//                           child: Text(
//                             "4149 39TH STREET, ABT4V 3X8",
//                             style: TextStyle(
//                               fontSize: 10.sp,
//                               fontWeight: FontWeight.w600,
//                               color: const Color(0xFF0E3B2C),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 24.h),
//             WhiteBox("New Journey"),
//             SizedBox(height: 2.h),
//
//             // 🟡 Updated only this section below
//             Expanded(
//               child: Scrollbar(
//                 controller: _scrollController,
//                 thumbVisibility: true,
//                 trackVisibility: true,
//                 interactive: true,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // Scrollable content
//                     Expanded(
//                       child: SingleChildScrollView(
//                         controller: _scrollController,
//                         child: Stack(
//                           children: [
//                             Container(
//                               padding: const EdgeInsets.only(left: 8, top: 6, bottom: 16),
//                               decoration: BoxDecoration(
//                                 color: const Color(0x4DFFFFFF),
//                                 borderRadius: BorderRadius.circular(6),
//                               ),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Row(
//                                     children: [
//                                       Icon(Icons.warning, color: const Color(0xffCD4E00), size: 12.sp),
//                                       SizedBox(width: 6.w),
//                                       Text(
//                                         "Updated Parcel Journey If Added to Your Route",
//                                         style: TextStyle(
//                                           fontSize: 10.sp,
//                                           color: const Color(0xffCD4E00),
//                                           fontWeight: FontWeight.w400,
//                                           letterSpacing: 0.25.sp,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   SizedBox(height: 6.64.h),
//                                   TimelineItemWidget(),
//                                   TimelineItemWidget(),
//                                   TimelineItemWidget(),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//
//                     // Fake right spacer to push scrollbar outwards a bit
//                     SizedBox(width: 4),
//                   ],
//                 ),
//               ),
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }
