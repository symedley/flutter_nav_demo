// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Raw data for the animation demo.

import 'package:flutter/material.dart';

const Color _mariner = Color(0xFF3B5F8F);
const Color _mediumPurple = Color(0xFF8266D4);
const Color _tomato = Color(0xFFF95B57);

const String _kGalleryAssetsPackage = 'flutter_gallery_assets';

class SectionDetail {
  const SectionDetail({
    this.title,
    this.subtitle,
  });
  final String title;
  final String subtitle;
}

class Section {
  const Section({
    this.title,
    this.backgroundAsset,
    this.backgroundAssetPackage,
    this.leftColor,
    this.rightColor,
    this.details,
  });
  final String title;
  final String backgroundAsset;
  final String backgroundAssetPackage;
  final Color leftColor;
  final Color rightColor;
  final List<SectionDetail> details;

  @override
  bool operator==(Object other) {
    if (other is! Section)
      return false;
    final Section otherSection = other;
    return title == otherSection.title;
  }

  @override
  int get hashCode => title.hashCode;
}

// TODO(hansmuller): replace the SectionDetail images and text. Get rid of
// the const vars like _eyeglassesDetail and insert a variety of titles and
// image SectionDetails in the allSections list.


final List<Section> allSections = <Section>[
  const Section(
    title: 'PRIME FACTORS',
    leftColor: _mediumPurple,
    rightColor: _mediumPurple,
  //  backgroundAsset: 'products/sunnies.png',
    backgroundAssetPackage: _kGalleryAssetsPackage,
    details: <SectionDetail>[
    ],
  ),
  const Section(
    title: 'MULTIPLICATION',
    leftColor: _tomato,
    rightColor: _tomato,
  //  backgroundAsset: 'products/table.png',
    backgroundAssetPackage: _kGalleryAssetsPackage,
    details: <SectionDetail>[
    ],
  ),
  const Section(
    title: 'DIVISION',
    leftColor: Colors.green,
    rightColor: Colors.green,
    //backgroundAsset: 'products/earrings.png',
    backgroundAssetPackage: _kGalleryAssetsPackage,
    details: <SectionDetail>[
    ],
  ),
  const Section(
    title: 'MULTIPLICATION&DIVISION',
    leftColor: _tomato,
    rightColor: _tomato,
    //backgroundAsset: 'products/hat.png',
    backgroundAssetPackage: _kGalleryAssetsPackage,
    details: <SectionDetail>[
    ],
  ),
];
