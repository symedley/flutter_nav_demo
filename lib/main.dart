// Copyright 2015 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Thanks for checking out Flutter!
// Like what you see? Tweet us @flutterio

import 'package:flutter/material.dart';

import 'demo/animation_demo.dart';

void main() {
  runApp(FlutterView());
}


class FlutterView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter View',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: AnimationDemo(),
    );
  }
}