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
      home : HomePage()
    );
  }
}

//创建一个自定义的组件,用这个自定义的组件包含scaffold组件
class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //定义标题栏
        appBar: AppBar(
          title : Text("图标组件的使用")
        ),

        //定义主体内容
        body : Center(
          child: IconButton(
            icon: Icon(Icons.home),
            color: Colors.yellow,
            iconSize: 50,
            onPressed: (){
              print("hello world");
            },
          ),
        )
      );
  }
}