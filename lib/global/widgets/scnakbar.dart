import 'package:flutter/material.dart';
import '../constants/navigation_service.dart';


void showSnackBar(String message){
        ScaffoldMessenger.of( NavigationService.navigatorKey.currentContext!)
          .showSnackBar(SnackBar(content: Text(message.toString())));
}