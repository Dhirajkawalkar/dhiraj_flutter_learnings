import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter_svg/svg.dart';
import 'package:popup_dialouge/Popup%20dialouge/list_widgets.dart';



//Upper part (Text)

//Title Text (Add parcel to your route)
class TitleBar extends StatelessWidget {
  final String titleText;
  const TitleBar({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
            child: Text(titleText, style: TextStyle(fontSize: 22.sp, fontStyle: FontStyle.normal, fontWeight: FontWeight.w600, color: Color(0xffCD4E00)), )),
        SizedBox(height: 16.h,),
      ],
    );
  }
}


class TextContent extends StatelessWidget {
  const TextContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //Text Content
          // Text("Add parcel to your route?", style: TextStyle(fontSize: 22.sp, fontStyle: FontStyle.normal, fontWeight: FontWeight.w600, color: Color(0xffCD4E00)), ),
          // SizedBox(height: 16.h,),
          Text("Please review the new journey of this parcel if you add it to yours.", style: TextStyle(fontSize: 14.sp, fontStyle: FontStyle.normal, fontWeight: FontWeight.w400, letterSpacing: 0.25.sp),),
          SizedBox(height: 16.h,),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Not sure? ',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 14.sp,
                  ),
                ),
                TextSpan(
                  text: 'Please confirm with your Operations Manager before proceeding.',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontSize: 14.sp,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h,),


          //Dotted line
          DottedLine(
            dashColor: Color(0xffEFD7C3),
          ),

          // SizedBox(height: 16.h),

          //Parcel barcode with number
          // Align(
          //     alignment: Alignment.centerLeft,
          //     child: Text("Parcel barcode", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10.sp),)
          // ),
          // SizedBox(height: 5.h,),
          // Align(
          //     alignment: Alignment.centerLeft,
          //     child: Text("123456klh90", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp, color: Color(0xff148D14),))
          // ),
          //
          // //User and Location row
          // Row(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.only(top: 14),
          //       child: Row(
          //         children: [
          //           SvgPicture.asset('image/supervisor_account.svg'),
          //
          //
          //           SizedBox(width: 6.w,),
          //
          //           Text("CNH inustrial", style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),)
          //         ],
          //       ),
          //     ),
          //
          //     SizedBox(width: 8.w,),
          //
          //     Padding(
          //       padding: const EdgeInsets.only(top: 12.0),
          //       child: Text("|"),
          //     ),
          //
          //     SizedBox(width: 8.w,),
          //
          //     Expanded(
          //       child: Row(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Padding(
          //             padding: const EdgeInsets.only(top: 12.0),
          //             child: SvgPicture.asset('image/location.svg'),
          //
          //           ),
          //           SizedBox(width: 6.w),
          //           Expanded(
          //             child: Padding(
          //               padding: const EdgeInsets.only(top: 12.0),
          //               child: Text(
          //                 "4149 39TH STREET, ABT4V 3X8",
          //                 style: TextStyle(
          //                   fontSize: 10.sp,
          //                   fontWeight: FontWeight.w600,
          //                   color: Color(0xFF0E3B2C),
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ],
          // ),
          // SizedBox(height: 24.h,),
        ],
      ),
    );
  }
}


class ScrollableTimelineBox extends StatelessWidget {
  const ScrollableTimelineBox({super.key});

  @override
  Widget build(BuildContext context) {
    // Timeline item list (you can pass this as a parameter too)
    final List<Widget> timelineItems = [
      TimelineItemWidget(),
      TimelineItemWidget(),
    ];

    double dynamicHeight =(timelineItems.length * 270); // +100 for top content like warning

    return Scrollbar(
      child: Padding(
        padding: EdgeInsets.only(top: 2),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 8, top: 6),
                  height: dynamicHeight,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0x4DFFFFFF),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// 🔶 Warning line
                      Row(
                        children: [
                          SvgPicture.asset('image/text_warning.svg'),
                          SizedBox(width: 6.w),
                          Text(
                            "Updated Parcel Journey If Added to Your Route",
                            style: TextStyle(
                              fontSize: 10.sp,
                              color: Color(0xffCD4E00),
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.25.sp,
                            ),
                          ),
                          SizedBox(height: 6.64.h),
                        ],
                      ),

                      SizedBox(height: 6.64.h),

                      /// 🔷 Timeline Widgets
                      ...timelineItems, // <-- This dynamically renders widgets
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


// //Buttons at bottom
class BottomButtons extends StatelessWidget {
  const BottomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,

      child: Container(
        // height: 80.h,
        // width: 312.w,

        height: 62.h,
        width: 280.w,

        //
        // height: 60.h,
        // width: 240.w,

        decoration: BoxDecoration(
            color: Color(0xffFAF0E8),
            borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(12)
            ),

            boxShadow: [
              BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, -4),
                  blurRadius: 10,
                  spreadRadius: 1
              )
            ]
        ),

        child: Padding(
          // padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16, right: 24),
          // padding: const EdgeInsets.only(top: 16, bottom: 16, left: 12, right: 18),
          padding: const EdgeInsets.only(top: 12, bottom: 12, left: 8, right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Dismiss", style: TextStyle(fontSize: 14.sp, decoration: TextDecoration.underline, color: Color(0xff1C453B), decorationColor: Color(0xff1C453B)),)),

              SizedBox(width: 8.w,),

              TextButton(onPressed: (){}, child: Text("Add to Route",  style: TextStyle(fontSize: 14.sp , decoration: TextDecoration.underline, color: Color(0xffCD4E00), decorationColor: Color(0xffCD4E00),),)),
            ],
          ),
        ),
      ),
    );
  }
}



//Static size
//Bottom part (Scrollable container/Timeline placeholder)
// class ScrollableTimelineBox extends StatelessWidget {
//   const ScrollableTimelineBox({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scrollbar(
//       child: Padding(
//        // padding: EdgeInsets.only(left: 24, bottom: 24, right: 12),
//         padding: EdgeInsets.only(top: 2),
//         child: Column(
//           children: [
//             Stack(
//               children: [
//                 Container(
//                   padding: EdgeInsets.only(left: 8, top: 6),
//                   height: 500.h,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: Color(0x4DFFFFFF),
//                     borderRadius: BorderRadius.circular(6),
//                   ),
//
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//
//                       // Warning line
//                       Row(
//                         children: [
//                           //Icon(Icons.warning, color: Color(0xffCD4E00), size: 12.sp,),
//                           SvgPicture.asset('image/text_warning.svg'),
//                           SizedBox(width: 6.w,),
//
//                           Text("Updated Parcel Journey If Added to Your Route", style: TextStyle(fontSize: 10.sp, color: Color(0xffCD4E00),fontStyle: FontStyle.normal, fontWeight: FontWeight.w400, letterSpacing: 0.25.sp),),
//
//                           SizedBox(height: 6.64.h,),
//                         ],
//                       ),
//
//
//                       SizedBox(height: 6.64.h,),
//
//                       //Timeline
//                       Expanded(
//                           child: Column(
//                             children: [
//                               TimelineItemWidget(),
//                               TimelineItemWidget(),
//                               TimelineItemWidget(),
//                             ],
//                           )
//                       ),
//                     ],
//                   ),
//                 ),
//
//
//                 // Positioned(
//                 //   right: 3,
//                 //   top: 0,
//                 //   child: Scrollbar(
//                 //     child: Positioned(
//                 //         right: 3,
//                 //         top: 345,
//                 //
//                 //         child: Stack(
//                 //           children: [
//                 //             Container(
//                 //               height: 310,
//                 //               width: 8,
//                 //               decoration: BoxDecoration(
//                 //                 borderRadius: BorderRadius.circular(12),
//                 //                 color: Colors.white,
//                 //               ),
//                 //             ),
//                 //
//                 //             Container(
//                 //               height: 80,
//                 //               width: 6,
//                 //               decoration: BoxDecoration(
//                 //                 borderRadius: BorderRadius.circular(12),
//                 //                 color: Colors.grey,
//                 //               ),
//                 //             ),
//                 //           ],
//                 //         )
//                 //     ),
//                 //   ),
//                 // ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
