import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    late MediaQueryData queryData = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(157, 89, 235, 1),
        centerTitle: true,
        title: const Text(
          "عاصمة فلسطين",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('images/image1.png'),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                "مدينة القدس",
                style: TextStyle(fontSize: 20, color: Colors.black54),
              ),
            ),
            buildContainer(queryData, "القدس", "الاسم"),
            SizedBox(
              height: queryData.size.height / 60,
            ),
            buildContainer(queryData, " ١٢٥ كم", "المساحة"),
            SizedBox(
              height: queryData.size.height / 60,
            ),
            buildContainer(queryData, "  ٣٥٨٠٠٠ نسمة", "السكان"),
            SizedBox(
              height: queryData.size.height / 60,
            ),
            buildContainer(queryData, "فلسطين", "الدولة"),
            SizedBox(
              height: queryData.size.height / 60,
            ),
            buildContainer(queryData, "مؤيد يوسف الحرازين", "اسم الطالب"),
            SizedBox(
              height: queryData.size.height / 60,
            ),
          ],
        ),
      ),
    );
  }

  Container buildContainer(
      MediaQueryData queryData, String name, String value) {
    return Container(
      height: queryData.size.height / 10,
      width: queryData.size.width - 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: const Color.fromRGBO(245, 237, 237, 1),
        border: Border.all(color: Colors.black45),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 2, bottom: 2, left: 4, right: 4),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Colors.white,
                  border: Border.all(color: Colors.black45),
                ),
                height: double.infinity,
                child: Center(
                  child: Text(
                    "$name",
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 2, bottom: 2, left: 4, right: 4),
              child: Container(
                child: Center(
                    child: Text(
                  "$value",
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                )),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Colors.white,
                  border: Border.all(color: Colors.black45),
                ),
                height: double.infinity,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
