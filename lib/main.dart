import 'dart:js';

import 'package:flutter/material.dart';
import 'package:linkdinpostmaker/photomake.dart';
import 'package:linkdinpostmaker/postmaker.dart';


void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => post(),
          'ph':(context) => photo2(),
        }
    ),
  );
}