//引入ui库
import 'package:flutter/material.dart';

//定义入口函数以及runApp
void main() => runApp(MyApp());

//创建runApp要加载的组件
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //定义主页加载的组件为Scaffold
        home: HomePage());
  }
}

//创建一个自定义的组件,用这个自定义的组件包含scaffold组件
class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //定义标题栏
      appBar: AppBar(title: Text("图标组件的使用")),

      //定义主体内容
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color : Colors.black87,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top : 50),
              child:Text("hello world",style: TextStyle(color : Colors.white,),) ,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.red,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.yellow,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

//创建一个自定义组件
class IconBar extends StatelessWidget {
  const IconBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.yellow,
      ),
      child: Icon(Icons.home),
    );
  }
}
