package com.example.blackimages;

import android.content.Intent;
import android.os.Bundle;

import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    GeneratedPluginRegistrant.registerWith(this);
    new MethodChannel(getFlutterView(), "launch").setMethodCallHandler(
            (call, result) -> {
                Intent myIntent = new Intent(this, LauncherActivity.class);
                this.startActivity(myIntent);
            });
  }
}
