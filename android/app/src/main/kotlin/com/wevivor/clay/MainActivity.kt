package com.wevivor.clay


import android.os.Bundle
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.android.FlutterActivityLaunchConfigs.BackgroundMode.transparent
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant
import android.content.Intent
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private var sharedData: String = ""
    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine);
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger,
        // "com.tnorbury.flutterSharingTutorial").setMethodCallHandler { call, result ->
        "com.wevivor.clay.share").setMethodCallHandler { call, result ->
          if (call.method == "getSharedData") {
            handleIntent()
            result.success(sharedData)
            sharedData = ""
          }
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        intent.putExtra("background_mode", transparent.toString())
        //자동 안됨 사용 금지 요망....
        // if (intent.getIntExtra("org.chromium.chrome.extra.TASK_ID", -1) == this.taskId) {
        //     this.finish()
        //     intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TASK);
        //     startActivity(intent);
        // }
        super.onCreate(savedInstanceState)
    }
      
    
      private fun handleIntent() {
        // intent is a property of this activity
        // Only process the intent if it's a send intent and it's of type 'text'
        if (intent?.action == Intent.ACTION_SEND) {
          if (intent.type == "text/plain") {
            intent.getStringExtra(Intent.EXTRA_TEXT)?.let { intentData ->
              sharedData = intentData
            }
          }
        }
      }

}
