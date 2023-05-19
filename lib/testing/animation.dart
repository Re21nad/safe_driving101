// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'container_transition.dart';
import 'fade_scale_transition.dart';
import 'fade_through_transition.dart';
import 'shared_axis_transition.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.from(
        colorScheme: const ColorScheme.light(),
      ).copyWith(
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
          },
        ),
      ),
      home: _TransitionsHomePage(),
    ),
  );
}

class _TransitionsHomePage extends StatefulWidget {
  @override
  _TransitionsHomePageState createState() => _TransitionsHomePageState();
}

class _TransitionsHomePageState extends State<_TransitionsHomePage> {
  bool _slowAnimations = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Material Transitions')),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                _TransitionListTile(
                  title: 'Container transform',
                  subtitle: 'OpenContainer',
                  onTap: () {
                    Navigator.of(context).push(
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return OpenContainerTransformDemo();
                        },
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          // Use ScaleTransition for the transition animation
                          return ScaleTransition(
                            scale: animation,
                            child: child,
                          );
                        },
                      ),
                    );


                  },
                ),
                _TransitionListTile(
                  title: 'Shared axis',
                  subtitle: 'SharedAxisTransition',
                  onTap: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute<void>(
                    //     builder: (BuildContext context) {
                    //       return const SharedAxisTransitionDemo();
                    //     },
                    //   ),
                    // );

                    Navigator.of(context).push(
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return SharedAxisTransitionDemo();
                        },
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          // Choose the desired transition type
                          // For example, SlideTransition
                          return SlideTransition(
                            position: Tween<Offset>(
                              begin: Offset(1.0, 0.0),  // Slide from right to left
                              end: Offset.zero,
                            ).animate(animation),
                            child: child,
                          );
                        },
                      ),
                    );

                  },
                ),
                _TransitionListTile(
                  title: 'Fade through',
                  subtitle: 'FadeThroughTransition',
                  onTap: () {
                    Navigator.of(context).push(
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return FadeThroughTransitionDemo();
                        },
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          // Use FadeTransition for the transition animation
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                      ),
                    );

                  },
                ),
                _TransitionListTile(
                  title: 'Fade',
                  subtitle: 'FadeScaleTransition',
                  onTap: () {
                    // Navigator.of(context).push(
                    //   PageRouteBuilder(
                    //     pageBuilder: (context, animation, secondaryAnimation) {
                    //       return FadeScaleTransitionDemo();
                    //     },
                    //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    //       // Use FadeTransition and ScaleTransition for the transition animation
                    //       return FadeTransition(
                    //         opacity: animation,
                    //         child: ScaleTransition(
                    //           scale: Tween<double>(
                    //             begin: 0.5,  // Define the starting scale
                    //             end: 1.0,  // Define the ending scale
                    //           ).animate(animation),
                    //           child: SharedAxisTransition(
                    //             animation: animation,
                    //             transitionType: SharedAxisTransitionType.scaled,  // Choose the desired shared axis transition type
                    //             secondaryAnimation: secondaryAnimation,
                    //             child: child,
                    //           ),
                    //         ),
                    //       );
                    //     },
                    //   ),
                    // );

                    Navigator.of(context).push(
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) {
                          return FadeScaleTransitionDemo();
                        },
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          // Use SharedAxisTransition for the transition animation
                          return SharedAxisTransition(
                            animation: animation,
                            transitionType: SharedAxisTransitionType.horizontal, // Choose the desired transition type
                            secondaryAnimation: secondaryAnimation,
                            child: child,
                          );
                        },
                      ),
                    );

                    // Navigator.of(context).push(
                    //   PageRouteBuilder(
                    //     pageBuilder: (context, animation, secondaryAnimation) {
                    //       return FadeScaleTransitionDemo();
                    //     },
                    //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
                    //       return SlideFadeTransition(
                    //         animation: animation,
                    //         secondaryAnimation: secondaryAnimation,
                    //         child: child,
                    //       );
                    //     },
                    //   ),
                    // );



                  },
                ),
              ],
            ),
          ),
          const Divider(height: 0.0),
          SafeArea(
            child: SwitchListTile(
              value: _slowAnimations,
              onChanged: (bool value) async {
                setState(() {
                  _slowAnimations = value;
                });
                // Wait until the Switch is done animating before actually slowing
                // down time.
                if (_slowAnimations) {
                  await Future<void>.delayed(const Duration(milliseconds: 300));
                }
                timeDilation = _slowAnimations ? 20.0 : 1.0;
              },
              title: const Text('Slow animations'),
            ),
          ),
        ],
      ),
    );
  }
}

class _TransitionListTile extends StatelessWidget {
  const _TransitionListTile({
    this.onTap,
    required this.title,
    required this.subtitle,
  });

  final GestureTapCallback? onTap;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15.0,
      ),
      leading: Container(
        width: 40.0,
        height: 40.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: Colors.black54,
          ),
        ),
        child: const Icon(
          Icons.play_arrow,
          size: 35,
        ),
      ),
      onTap: onTap,
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}