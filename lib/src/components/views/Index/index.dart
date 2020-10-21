import 'package:flutter/material.dart';

/* 首页 */
class Index extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return IndexContainer();
  }
}
/* 首页 components  */
class IndexContainer extends State<Index> {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(child: Image.network("https://dss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2346282507,2171850944&fm=26&gp=0.jpg"),),
      );
  }
}