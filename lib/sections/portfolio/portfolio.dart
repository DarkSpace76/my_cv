import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:my_resume/components/text_widgets.dart';
import 'package:my_resume/sections/portfolio/view_project.dart';
import 'package:my_resume/style.dart';

Widget portfolio() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      header('PORTFOLIO'),
      SizedBox(
        height: 35,
      ),
      StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: HoverImage(
              color: Colors.green,
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: HoverImage(
              color: Colors.amber,
            ),
          ),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: HoverImage(
                color: Colors.yellow,
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: HoverImage(
                color: Colors.blue,
              )),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: HoverImage(
              color: Colors.indigoAccent,
            ),
          ),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: HoverImage(
                color: Colors.purple,
              )),
        ],
      )
    ],
  );
}

class HoverImage extends StatefulWidget {
  final Color color;
  HoverImage({required this.color});
  @override
  _HoverImageState createState() => _HoverImageState();
}

class _HoverImageState extends State<HoverImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;
  late Animation padding;
  late Animation opacity;
  late Animation opacityText;
  late Animation offsetYPosTop;
  late Animation offsetYPosBottom;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );
    opacity = Tween(begin: 0, end: 0.6).animate(CurvedAnimation(
        parent: _controller, curve: Curves.ease, reverseCurve: Curves.easeIn));
    opacityText = Tween(begin: 0, end: 1.0).animate(CurvedAnimation(
        parent: _controller, curve: Curves.ease, reverseCurve: Curves.easeIn));
    offsetYPosTop = Tween(begin: -20.0, end: 0).animate(CurvedAnimation(
        parent: _controller, curve: Curves.ease, reverseCurve: Curves.easeIn));
    offsetYPosBottom = Tween(begin: 20.0, end: 0).animate(CurvedAnimation(
        parent: _controller, curve: Curves.ease, reverseCurve: Curves.easeIn));

    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          _controller.forward();
        });
      },
      onExit: (value) {
        setState(() {
          _controller.reverse();
        });
      },
      child: GestureDetector(
        onTap: (() {
          viewProjcet(context);
        }),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0.0, 20.0),
                spreadRadius: -10.0,
                blurRadius: 20.0,
              )
            ],
          ),
          child: Stack(
            children: [
              Container(color: widget.color),
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(opacity.value)),
              ),
              Center(
                child: Opacity(
                  opacity: opacityText.value,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Transform.translate(
                          offset: Offset(0, offsetYPosTop.value),
                          child: Text(
                            'Project #1',
                            style: textStyle(bold: true, textSize: 25),
                          ),
                        ),
                        Text(
                          'this project was created for test purposes',
                          textAlign: TextAlign.center,
                          style: textStyle(),
                        ),
                        Transform.translate(
                          offset: Offset(0, offsetYPosBottom.value),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                for (int i = 0; i < 5; i++)
                                  FlutterLogo(size: 20),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
