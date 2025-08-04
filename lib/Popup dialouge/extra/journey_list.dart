import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:popup_dialouge/Popup dialouge/list_widgets.dart';


// class TimelineItemWidget extends StatelessWidget {
//   const TimelineItemWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       // You estimate height here manually (e.g., 200.h or 230.h)
//       height: 230.h,
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Green Line
//           Stack(
//             children: [
//               Container(
//                 width: 30.w,
//                 alignment: Alignment.topCenter,
//                 child: Container(
//                   width: 4,
//                   height: 230.h, // ✅ Match this with full container height
//                   color: Colors.green,
//                 ),
//               ),
//             ],
//           ),
//
//           // Right Side Content
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: const [
//                 NewDateButton(),
//                 InsideInfo(),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


//Working



class TimelineList extends StatelessWidget {
  const TimelineList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Color(0x4DFFFFFF),
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: ListView(
        children: [
          TimelineRow(
            date: "Jan 24, 2025",
            content: TimelineContentWidget(title: "Arrived at Hub", subtitle: "Surat, Gujarat"),
          ),
          TimelineRow(
            date: "Jan 25, 2025",
            content: TimelineContentWidget(title: "Out for Delivery", subtitle: "ETA: 5 PM"),
          ),
        ],
      ),
    );
  }
}


class TimelineContentWidget extends StatelessWidget {
  final String title;
  final String subtitle;

  const TimelineContentWidget({
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4.r,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold)),
          SizedBox(height: 4.h),
          Text(subtitle, style: TextStyle(fontSize: 12.sp, color: Colors.grey)),
        ],
      ),
    );
  }
}


class TimelineRow extends StatelessWidget {
  final String date;
  final Widget content;

  const TimelineRow({
    Key? key,
    required this.date,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
    Padding(
    padding: EdgeInsets.symmetric(vertical: 12.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DateButton(text: date),

        SizedBox(width: 12.w),


        ],
      ),
    ),

        Expanded(
            child: Padding(
          padding:  EdgeInsets.only(top: 58.h, left: 32.w),
          child: content,
        )),
      ],
    );
  }
}



class TimelineWidget extends StatelessWidget {
  final List<String> dates;

  const TimelineWidget({Key? key, required this.dates}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemSpacing = 222.h;

    return Container(
      padding: EdgeInsets.only(left: 8.w, top: 6.h),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0x4DFFFFFF),
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Header warning
          Row(
            children: [
              Icon(Icons.warning, color: Color(0xffCD4E00), size: 12.sp),
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
            ],
          ),

          SizedBox(height: 6.64.h),

          /// Stack timeline line and buttons
          Stack(
            children: [
              /// Vertical Line behind buttons
              Padding(
                padding: EdgeInsets.only(left: 17.w),
                child: Container(
                  width: 4.w,
                  height: itemSpacing * (dates.length - 1) + 26.h,
                  color: const Color(0xFF124734),
                ),
              ),

              Padding(
                padding:  EdgeInsets.only(top: 58.h, left: 32.w),
                child: JourneyContent(),
              ),

              /// Date Buttons
              Column(
                children: [
                  for (int i = 0; i < dates.length; i++) ...[
                    if (i != 0) SizedBox(height: itemSpacing),
                    DateButton(text: dates[i]),
                  ],
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}



class JourneyList extends StatelessWidget {
  const JourneyList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8, top: 6),
      height: 600.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0x4DFFFFFF),
        borderRadius: BorderRadius.circular(6),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.warning, color: Color(0xffCD4E00), size: 12.sp,),

              SizedBox(width: 6.w,),

              Text("Updated Parcel Journey If Added to Your Route", style: TextStyle(fontSize: 10.sp, color: Color(0xffCD4E00),fontStyle: FontStyle.normal, fontWeight: FontWeight.w400, letterSpacing: 0.25.sp),),

              SizedBox(height: 6.64.h,),
            ],
          ),

          Stack(
            children: [
              Padding(
                padding:  EdgeInsets.only(left: 17.w),
                child: Column(
                  children: [
                    Container(
                      width: 4.w,
                      height: 500, // set height based on content
                      color: Color(0xFF124734), // green color
                    ),


                  ],
                ),
              ),

              Column(
                children: [
                  DateButton(text: "Jan 24, 2025",),
                  SizedBox(height: 222.h,),
                  DateButton(text: "Jan 25, 2025",),
                ],
              ),

            ],
          ),
        ],
      ),

    );
  }
}



class JourneyContent extends StatelessWidget {
  const JourneyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Container(
            width: 70.w,
            child:
            Row(                        //John doe and icon
              children: [
                Icon(Icons.person, size: 16.sp, color: Color(0xffCD4E00),),

                SizedBox(width: 9.w,),

                Text("John Doe (You)", style: TextStyle(fontSize: 10.sp, color: Color(0xffCD4E00),fontStyle: FontStyle.normal, fontWeight: FontWeight.w400, letterSpacing: 0.25.sp,),),
              ],
            ),
          ),
        ),

        SizedBox(height: 2.h,),

        SizedBox(
          width: double.infinity,
          child: Container(
            width: 70.w,
            child:
            Wrap(                        //John doe and icon
              children: [
                Text("Route ID - RMEREG02 CA SK Consumer Delivery Services 20250716 1", style: TextStyle(fontSize: 10.sp, color: Color(0xffCD4E00),fontStyle: FontStyle.normal, fontWeight: FontWeight.w400, letterSpacing: 0.25.sp,),),
              ],
            ),
          ),
        ),

        SizedBox(height: 9.h,),

        SizedBox(
          width: double.infinity,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Stack(
                children: [
                  Column(
                    children: [

                      SizedBox(height: 8.h,),
                      Icon(Icons.blur_circular_outlined ,size: 16.sp, color: Color(0xff1C453B),),
                      SizedBox(height: 6.5.h,),

                      //Dashed line vertical
                      Column(
                        children: List.generate(
                          3,
                              (index) => Container(
                            width: 1,
                            height: 4,
                            color: Color(0xff747E7A),
                            margin: const EdgeInsets.symmetric(vertical: 2),
                          ),
                        ),
                      ),

                      SizedBox(height: 6.5.h,),

                      Icon(Icons.location_on_outlined ,size: 16.sp, color: Color(0xff1C453B),),
                    ],
                  ),


                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 20.w),
                        child: Text("Pickup from", style: TextStyle(fontSize: 8.sp),),
                      ),

                      Padding(
                        padding:  EdgeInsets.only(top: 0, left: 20.w,bottom: 10.h),
                        child: SizedBox(

                          child: Text("1030 NORTH SERVICE RD. Moose Jaw, SK, Canada S6H 4P6", style: TextStyle(fontSize: 8.sp),),
                        ),
                      ),

                      Padding(
                        padding:  EdgeInsets.only(bottom: 1.h, left: 20.w),
                        child: Text("Delivery at", style: TextStyle(fontSize: 8.sp),),
                      ),

                      Padding(
                        padding:  EdgeInsets.only(left: 20.w, bottom: 10.h),
                        child: SizedBox(

                          child: Text("Ziing Regina 1421 Fleury St Regina, SK, Canada S4N7N56", style: TextStyle(fontSize: 8.sp),),
                        ),
                      ),


                    ],
                  )

                ],
              ),



            ],
          ),
        )
      ],
    );
  }
}



//Date button
class DateButton extends StatelessWidget {
  String text;

  DateButton({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 26.h,
      width: 116.w,
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),

      decoration: BoxDecoration(
          color: Color(0xff1C453B),
          borderRadius: BorderRadius.circular(30)
      ),

      child: Row(
        children: [
          SizedBox(width: 8.w,),
          Text(text, style: TextStyle(color: Color(0xffFFFFFF), fontSize: 10.sp),),

          SizedBox(width: 8.w,),
          Icon(Icons.keyboard_arrow_down_outlined, size: 18.sp, color: Color(0xffFFFFFF),)

        ],
      ),
    );
  }
}


//Buttons at bottom
class BottomButtons extends StatelessWidget {
  const BottomButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,

      child: Container(
        height: 88.h,
        width: 312.w,

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
          padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16, right: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Dismiss", style: TextStyle(fontSize: 14.sp, decoration: TextDecoration.underline, color: Color(0xff1C453B)),)),

              SizedBox(width: 8.w,),

              TextButton(onPressed: (){}, child: Text("Add to Route",  style: TextStyle(fontSize: 14.sp , decoration: TextDecoration.underline, color: Color(0xffCD4E00)),)),
            ],
          ),
        ),
      ),
    );
  }
}