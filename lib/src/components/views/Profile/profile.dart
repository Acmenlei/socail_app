import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfileContainer();
  }
}

class _ProfileContainer extends State<Profile> {
  String head = "https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1426822276,3750139757&fm=26&gp=0.jpg";
  @override
  Widget build(BuildContext context) {
    return Container(child: Column(
      children: [
        getheader(),
        getsection1(),
        getsection2(),
        getsection3(),
      ],
    ));
  }

  /* 1. 获取头像等个人信息 */
  Widget getheader() {
    return Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 38),
          decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 10, color: Color(0xffeeeeee)))),
          child: Row(
            children: [
              Image.network("$head",width: 80,height: 80,fit: BoxFit.cover),
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("登录", style: TextStyle(fontSize:20)),
                  Text("请去登录后再来查看个人信息", style: TextStyle(color: Colors.grey),),
                ]
              )),
              Icon(Icons.login,size:40)
            ],
          )
        );
  }
  /* 2. 获取中间主体内容 */
  Widget getsection1() {
    return Container(
      decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 10, color: Color(0xffeeeeee)))),
      padding: const EdgeInsets.fromLTRB(35, 15, 35, 5),
      child: Column(
        children: [
          Row(children: [ Icon(Icons.collections, size: 28, color: Colors.cyanAccent,), Expanded(child: Text("  我的收藏", style: TextStyle(fontSize: 18, color: Color(0xff333333)))), Icon(Icons.chevron_right, size: 30,color: Colors.grey,)]),
          SizedBox(height: 20,),
          Row(children: [ Icon(Icons.wallet_giftcard, size: 28, color: Colors.yellow,), Expanded(child: Text("  我的钱包", style: TextStyle(fontSize: 18, color: Color(0xff333333)))), Icon(Icons.chevron_right, size: 30,color: Colors.grey,)]),
          SizedBox(height: 20,),
          ],
      ),
    );
  }
    Widget getsection2() {
    return Container(
      decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 10, color: Color(0xffeeeeee)))),
      padding: const EdgeInsets.fromLTRB(35, 15, 35, 5),
      child: Column(
        children: [
          Row(children: [ Icon(Icons.share, size: 28, color: Colors.green,), Expanded(child: Text("  分享应用", style: TextStyle(fontSize: 18, color: Color(0xff333333)))), Icon(Icons.chevron_right, size: 30,color: Colors.grey,)]),
          SizedBox(height: 20,),
          Row(children: [ Icon(Icons.help_center_rounded, size: 28, color: Colors.redAccent,), Expanded(child: Text("  帮助", style: TextStyle(fontSize: 18, color: Color(0xff333333)))), Icon(Icons.chevron_right, size: 30,color: Colors.grey,)]),
          SizedBox(height: 20,),
        ]
          ),
    );
    }
     Widget getsection3() {
    return Container(
      padding: const EdgeInsets.fromLTRB(35, 15, 35, 5),
      child: Column(
        children: [
          Row(children: [ Icon(Icons.feedback, size: 28, color: Colors.blueAccent,), Expanded(child: Text("  问题反馈", style: TextStyle(fontSize: 18, color: Color(0xff333333)))), Icon(Icons.chevron_right, size: 30,color: Colors.grey,)]),
          SizedBox(height: 20,),
          Row(children: [ Icon(Icons.settings, size: 28, color: Colors.blueAccent,), Expanded(child: Text("  设置", style: TextStyle(fontSize: 18, color: Color(0xff333333)))), Icon(Icons.chevron_right, size: 30,color: Colors.grey,)]),
        ]
          ),
    );
    }
}