import 'package:flutter/material.dart';

class AssignPage extends StatefulWidget {
  const AssignPage({super.key});

  @override
  State<AssignPage> createState() => _AssignPageState();
}

class _AssignPageState extends State<AssignPage> {
  Color favicon = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("data")),
      body: Stack(children: [
        Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.blue.shade100, Colors.teal.shade100]))),
        Container(
          width: double.infinity,
          child: Column(
            children: [
              Image(
                width: double.infinity,
                height: 200,
                image: NetworkImage(
                    "https://images.tokopedia.net/img/KRMmCm/2022/4/28/ae6e3c6f-279e-48c1-845f-17f407170e39.jpg"),
                fit: BoxFit.cover,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(1, 10, 1, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://assets-pergikuliner.com/uploads/bootsy/image/20555/cafe_untuk_hangout_di_sby.jpeg"),
                              fit: BoxFit.cover),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://assets-pergikuliner.com/uploads/bootsy/image/20555/cafe_untuk_hangout_di_sby.jpeg"),
                              fit: BoxFit.cover),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://assets-pergikuliner.com/uploads/bootsy/image/20555/cafe_untuk_hangout_di_sby.jpeg"),
                              fit: BoxFit.cover),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(12)),
                    ),
                    Container(
                      width: 90,
                      height: 90,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://assets-pergikuliner.com/uploads/bootsy/image/20555/cafe_untuk_hangout_di_sby.jpeg"),
                              fit: BoxFit.cover),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(12)),
                    ),
                  ],
                ),
              ),
              Text("Lorem Ipsum",
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25)),
              Container(
                child: Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(3, 10, 3, 10),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec tempus nisl in massa tempus, nec mollis augue pretium. Integer dictum tempor lectus, ut ultricies nulla pellentesque vitae. Sed pharetra pretium ultrices. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer consequat ut risus sed sollicitudin. Sed at pellentesque nunc, sed imperdiet dolor. Morbi non blandit lacus. Etiam tempus ipsum ut dui pellentesque commodo. Nam blandit, mauris sit amet eleifend ullamcorper, erat arcu ornare felis, et viverra erat leo suscipit massa. Aenean facilisis ornare risus a porta. Vivamus et fringilla sem. Vestibulum quis nisl felis.",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(3, 10, 3, 10),
                        child: Text(
                          "Aliquam finibus id erat a placerat. Nulla lacus quam, aliquam sed gravida ac, volutpat eget justo. Sed volutpat commodo lorem ut porttitor. Phasellus facilisis sodales pretium. Pellentesque sed odio magna. Sed gravida leo ornare velit blandit porta ac ac tellus. Nam pretium est a molestie imperdiet. Praesent eget lorem mattis ligula consequat scelerisque at vel ante. Suspendisse porttitor quam et aliquam fringilla.",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(3, 10, 3, 10),
                        child: Text(
                          "Etiam feugiat finibus quam, eget fermentum urna interdum sit amet. Proin eu ligula eros. Sed laoreet malesuada turpis, at volutpat orci tempor at. Morbi placerat enim eget imperdiet iaculis. Nunc vel pretium ante, in viverra massa. Pellentesque eu mi efficitur mi posuere mattis. Nam nibh velit, viverra nec ligula vitae, ultrices venenatis justo. Nullam rhoncus finibus luctus. Proin id tristique arcu, eget dignissim nulla.",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          margin:EdgeInsets.only(top: 10),
          child: Align(
            alignment: Alignment.topRight,
            child: ElevatedButton(
                child: Icon(
                  Icons.favorite,
                  color: favicon,
                ),
                onPressed: () {
                  setState(() {
                    if (favicon == Colors.grey) {
                      favicon = Colors.pink.shade300;
                    } else {
                      favicon = Colors.grey;
                    }
                  });
                },
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(50, 50),
                    backgroundColor: Colors.grey.shade100,
                    shape: CircleBorder())),
          ),
        )
      ]),
    );
  }
}
