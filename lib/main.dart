import 'package:flutter/material.dart';

//使MaterialApp和Scaffold两个组件装饰App
void main(){
  runApp(MaterialApp( //所有组件的根组件MaterialApp
    home: Scaffold(
      appBar: AppBar(title: const Text("你好flutter"),centerTitle: true,),
      body: const Column( //  通过Column加载多个组件
        children: [
          MyApp(),
          MyButton()
        ],
      )
    ),
  ));
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(//Container不是常量构造函数
        alignment: Alignment.center,
        width: 100,
        height: 100,
        decoration: BoxDecoration(  //BosDecoration是可装饰的decoration
          color: Colors.red, //背景颜色
          border: Border.all( //配置背景边框
            color: Colors.black,
            width: 2
          ),
          borderRadius: BorderRadius.circular(10),   //配置边框圆角
          boxShadow: const [  //    配置阴影效果
            BoxShadow(
              color: Colors.black,
              blurRadius: 10.0,
              blurStyle: BlurStyle.solid
            )
          ],
          // LinearGradient 背景线性渐变; RadialGradient 径向渐变
          gradient: const LinearGradient(
            colors: [
              Colors.red,Colors.yellow
            ]
          )
        ),
        child: const Text("Hello Flutter",style: TextStyle(
          color: Colors.white,
          fontSize: 20
        ),),
      )//const表示多个相同的实例共享存储空间
    );
  }
}

class MyButton extends StatelessWidget{ //通过Container创建按钮
  // const MyButton({super.key});
  const MyButton({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      alignment: Alignment.center,
      width: 100,
      height: 40,
      //padding是让容器和里面的元素有相应的距离，margin是让容器和容器外部的其他容器有相应的间距
      // margin: const EdgeInsets.all(10),  //表示四周margin
      margin: const EdgeInsets.fromLTRB(0, 40, 0, 0), //表示固定方向间隔距离
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10) //设置按钮边框圆角
      ),
      child: const Text("按钮",style: TextStyle(
        color: Colors.white
      ),),
    );
  }

}