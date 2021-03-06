import 'package:music/util/system_util.dart';
import 'package:music/util/screen_util.dart';

import 'package:flutter/material.dart';
import 'package:music/widgets/global_bottom_navigation_bar.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// 广场页
import 'package:music/pages/square/header.dart';
import 'package:music/pages/square/category.dart';
import 'package:music/pages/square/banner_slider.dart';
import 'package:music/pages/square/square_list.dart';

import 'package:audioplayers/audioplayers.dart';

/// 广场页栏目数据
final categoryItems = [
  {'id': 0, 'title': '推荐', 'color': null},
  {'id': 1, 'title': '官方', 'color': null},
  {'id': 2, 'title': '精品', 'color': 0xffe7aa5a},
  {'id': 3, 'title': '欧美', 'color': null},
  {'id': 4, 'title': '电子', 'color': null},
  {'id': 5, 'title': '流行', 'color': null},
  {'id': 6, 'title': '云村', 'color': null},
  {'id': 7, 'title': '地球', 'color': null},
  {'id': 8, 'title': '网易', 'color': null},
  {'id': 9, 'title': '歌单', 'color': null},
  {'id': 10, 'title': '其他', 'color': null},
];

/// 广场页面歌单推荐
const listItems = [
  {'id': 11, 'img': 'assets/tmp_cover_1.jpg', 'title': '钢琴摇滚 | 浪子赠予诗人的一纸情书'},
  {'id': 12, 'img': 'assets/tmp_cover_2.jpg', 'title': '钢琴摇滚 | 浪子赠予诗人的一纸情书'},
  {'id': 13, 'img': 'assets/tmp_cover_3.jpg', 'title': '钢琴摇滚 | 浪子赠予诗人的一纸情书'},
  {'id': 14, 'img': 'assets/tmp_cover_4.jpg', 'title': '钢琴摇滚 | 浪子赠予诗人的一纸情书'},
  {'id': 15, 'img': 'assets/tmp_cover_5.jpg', 'title': '钢琴摇滚 | 浪子赠予诗人的一纸情书'},
  {'id': 16, 'img': 'assets/tmp_cover_6.jpg', 'title': '钢琴摇滚 | 浪子赠予诗人的一纸情书'},
  {'id': 17, 'img': 'assets/tmp_cover_1.jpg', 'title': '钢琴摇滚 | 浪子赠予诗人的一纸情书'},
  {'id': 18, 'img': 'assets/tmp_cover_2.jpg', 'title': '钢琴摇滚 | 浪子赠予诗人的一纸情书'},
  {'id': 19, 'img': 'assets/tmp_cover_3.jpg', 'title': '钢琴摇滚 | 浪子赠予诗人的一纸情书'},
  {'id': 20, 'img': 'assets/tmp_cover_4.jpg', 'title': '钢琴摇滚 | 浪子赠予诗人的一纸情书'},
  {'id': 21, 'img': 'assets/tmp_cover_5.jpg', 'title': '钢琴摇滚 | 浪子赠予诗人的一纸情书'},
  {'id': 22, 'img': 'assets/tmp_cover_6.jpg', 'title': '钢琴摇滚 | 浪子赠予诗人的一纸情书'},
];

class SquarePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final screen = Screen(context);
    // 得到route对象
    final args = ModalRoute.of(context).settings.arguments as Map;

    /// 变更状态
    final categoryID = useState(categoryItems[0]['id']);

    /// 判断Android去除最上方栏
    setStatusBarStyle(Brightness.light);

    print(args);
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.white),
            ),
            Container(
              height: screen.calc(860),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xff959a99), Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  // stops: [0, 0.2],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: screen.top + screen.calc(7)),
              child: Column(
                children: [
                  Header(),
                  Category(
                    /// 广场页父级元素传递
                    items: categoryItems,
                    value: categoryID.value,
                    onChanged: (id) {
                      categoryID.value = id;
                    },
                  ),
                  BannerSlider(),
                  SquareList(
                    items: listItems,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: GlobalBottomNavigationBar(
        /// 完成换页操作
        value: 2,
      ),
    );
  }
}
