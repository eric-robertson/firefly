library firefly;

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math' as math;
import 'package:http/http.dart' as http;
import 'package:in_app_purchase/in_app_purchase.dart';

// ! .
part './start.dart';

// ! views
part './views/settings.dart';
part './views/similarApps.dart';
part './views/support.dart';

// ! src
part './src/rerenderController.dart';
part './src/saveData.dart';
part './src/networking.dart';

// ! utils
part './utils/time.dart';

// ! Style 
part './style/colors.dart';
part './style/themes.dart';


// ! Widgets

part './widgets/optionSelector.dart';
part './widgets/themeSelector.dart';
part './widgets/settingsButton.dart';

// * Icons 
part './widgets/icons/plain.dart';
part './widgets/icons/button.dart';

// * Shapes 
part './widgets/shapes/circle.dart';
part './widgets/shapes/line.dart';

// * Layouts 
part './widgets/layouts/blank.dart';
part './widgets/layouts/blankScroll.dart';

// * Text 
part './widgets/text/bold.dart';
part './widgets/text/plain.dart';
part './widgets/text/title.dart';
part './widgets/text/light.dart';

// * utils 
part './widgets/utils/containers.dart';
part './widgets/utils/effect.dart';

// * inputs 
part './widgets/inputs/pillbutton.dart';
part './widgets/inputs/button.dart';
part './widgets/inputs/listbutton.dart';

