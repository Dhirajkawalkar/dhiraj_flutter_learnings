import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter_svg/svg.dart';
import 'package:popup_dialouge/Popup%20dialouge/list_widgets.dart';



//Upper part (Text)
class TextContent extends StatelessWidget {
  const TextContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Text Content
        Text("Add parcel to your route?", style: TextStyle(fontSize: 22.sp, fontStyle: FontStyle.normal, fontWeight: FontWeight.w600, color: Color(0xffCD4E00)), ),
        SizedBox(height: 16.h,),
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

        SizedBox(height: 16.h,),

        //Parcel barcode with number
        Align(
            alignment: Alignment.centerLeft,
            child: Text("Parcel barcode", style: TextStyle(fontWeight: FontWeight.w400, fontSize: 10.sp),)
        ),
        SizedBox(height: 5.h,),
        Align(
            alignment: Alignment.centerLeft,
            child: Text("123456klh90", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp, color: Color(0xff148D14),))
        ),

        //User and Location row
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 14),
              child: Row(
                children: [
                  Icon(Icons.person),


                  SizedBox(width: 6.w,),

                  Text("CNH inustrial", style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w600),)
                ],
              ),
            ),

            SizedBox(width: 8.w,),

            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Text("|"),
            ),

            SizedBox(width: 8.w,),

            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Icon(Icons.location_on_outlined, size: 20.sp, color: Color(0xFF0E3B2C)),

                  ),
                  SizedBox(width: 6.w),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text(
                        "4149 39TH STREET, ABT4V 3X8",
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF0E3B2C),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 24.h,),
      ],
    );
  }
}



//Bottom part (Scrollable container/Timeline placeholder)
class ScrollableTimelineBox extends StatelessWidget {
  const ScrollableTimelineBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Padding(
        padding: EdgeInsets.only(left: 24, bottom: 24, right: 12),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 8, top: 6),
                  height: 900.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0x4DFFFFFF),
                    borderRadius: BorderRadius.circular(6),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // Warning line
                      Row(
                        children: [
                          //Icon(Icons.warning, color: Color(0xffCD4E00), size: 12.sp,),
                          SvgPicture.asset('image/text_warning.svg'),
                          SizedBox(width: 6.w,),

                          Text("Updated Parcel Journey If Added to Your Route", style: TextStyle(fontSize: 10.sp, color: Color(0xffCD4E00),fontStyle: FontStyle.normal, fontWeight: FontWeight.w400, letterSpacing: 0.25.sp),),

                          SizedBox(height: 6.64.h,),
                        ],
                      ),


                      SizedBox(height: 6.64.h,),

                      //Timeline
                      Expanded(
                          child: Column(
                            children: [
                              TimelineItemWidget(),
                              TimelineItemWidget(),
                            ],
                          )
                      ),
                    ],
                  ),
                ),


                // Positioned(
                //   right: 3,
                //   top: 0,
                //   child: Scrollbar(
                //     child: Positioned(
                //         right: 3,
                //         top: 345,
                //
                //         child: Stack(
                //           children: [
                //             Container(
                //               height: 310,
                //               width: 8,
                //               decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(12),
                //                 color: Colors.white,
                //               ),
                //             ),
                //
                //             Container(
                //               height: 80,
                //               width: 6,
                //               decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(12),
                //                 color: Colors.grey,
                //               ),
                //             ),
                //           ],
                //         )
                //     ),
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
