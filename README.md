# music

## 1. 初识
1. Widget-> 原件/组件
可以放到视图当中被用户使用的东西,看的见或者看不见的(gesture)叫做Widget
2. State   
StatelessWidget 无状态 -> 自身不变 -> 性能高 
StatefulWidget 有状态 -> 自身会变 -> 性能较低
   
-----------------------------------------------------------------
3. 包
- 系统包
- 自己构建的
- 三方包

pub.dev如何使用
1. 添加依赖
   pubspec.yaml
2. 安装依赖
   flutter pub get
3. 引入包
   import 'package:flutter_hooks/flutter_hooks.dart'

-----------------------------------------------------------------
变量
1. 类型
int,double
String
List
Map

2. 其他声明方式
final 仅保护赋值
   编译期-赋值

const 保护赋值和内容
   编译期-赋值
   运行时

-----------------------------------------------------------------

1. 类型
   int a;
   double b;
2. var 
   var a = 12;
   int a = 12;

   var a;
   dynamic a;
3. 只读
   1. final 赋值
   2. const 赋值 + 内容
4. dynamic
   
   var a = 12; => int a = 12;
   var a; => dynamic = a; // 不限制类型
   typedef Func = int Function(int,int);

   var依赖推测 -> 方便
   dynamic 接受任何东西，默认类型


-----------------------------------------------------------------
声明一个变量方式
1. 写死
int a;

2. 常量
final: 仅保护赋值，只在编译期检查
const： 保护了赋值以及内部修改，在运行时也存在  
3. 
dynamic和var的区别
dynamic： 真实类型
var： 赋值时候是什么类型就是什么

-----------------------------------------------------------------