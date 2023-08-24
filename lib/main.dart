import 'package:flutter/material.dart';

//使MaterialApp和Scaffold两个组件装饰App
void main(){
  runApp(MaterialApp( //所有组件的根组件MaterialApp
    home: Scaffold(
      appBar: AppBar(title: const Text("你好flutter"),centerTitle: true,),
      body: const Column( //  通过Column加载多个组件
        children: [
          MyApp(),
          MyButton(),
          MyText(),
          MyImage()
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
        margin: const EdgeInsets.fromLTRB(0, 60, 0, 0),
        alignment: Alignment.center,
        width: 100,
        height: 100,
        // transform: Matrix4.translationValues(10, 0, 0), // 位移  //通过transform可以使Container容易进行一些旋转、平移、倾斜的操作
        // transform: Matrix4.rotationZ(0.2),  //旋转
        transform: Matrix4.skewY(0.2),  //倾斜
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
        child: const Text("你好 Flutter",style: TextStyle(
          color: Colors.white,
          fontSize: 15
        ),),
      )//const表示多个相同的实例共享存储空间
    );
  }
}

class MyButton extends StatelessWidget{ //通过Container创建按钮
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
      // padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
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

class MyText extends StatelessWidget{
  const MyText({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
      decoration: const BoxDecoration(
        color: Colors.yellow
      ),
      child: const Text("你好我是flutter你好我是flutter你好我是flutter你好我是flutter你好我是flutter",
        textAlign: TextAlign.left,
        overflow: TextOverflow.ellipsis,  //文字内容溢出显示几个点...
        maxLines: 1,//表示显示几行文字
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w900,//字体粗细
          color: Colors.red,
          fontStyle: FontStyle.italic, //表示文字样式，italic斜体 normal正常
          letterSpacing: 2,  //字间距
          decoration: TextDecoration.underline,
          decorationColor: Colors.black,
          decorationStyle: TextDecorationStyle.dashed //表示虚线
        ),),
    );
  }

}

class MyImage extends StatelessWidget{  //图片显示
  const MyImage({Key? key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 250,
      margin: const EdgeInsets.fromLTRB(0, 45, 0, 0),
      decoration: const BoxDecoration(
        color: Colors.yellow
      ),
      child: Image.network("https://lmg.jj20.com/up/allimg/4k/s/02/2109250006343S5-0-lp.jpg",
        // scale: 2,//表示图片缩小一倍
        // alignment: Alignment.centerLeft, //控制图片的位置
        // fit: BoxFit.fill, //在容器全屏显示
        // fit: BoxFit.cover,  //对图片进行剪裁不压缩图片
        // repeat: ImageRepeat.repeatX,  //在x轴进行平铺
        repeat: ImageRepeat.repeat,  //在x、y轴都进行平铺
      ),
    );
  }
  
}