package com.example.a20;

import androidx.appcompat.app.AppCompatActivity;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ProgressBar;

public class
SlapSreen extends AppCompatActivity {
  private ProgressBar progressBar;
  private int progress;
    @SuppressLint("MissingInflatedId")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // remove the tile bar bar
        requestWindowFeature(Window.FEATURE_NO_TITLE);

        // remove the notification bar
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN ,
                WindowManager.LayoutParams.FLAG_FULLSCREEN
        );
        setContentView(R.layout.activity_slap_sreen);

        progressBar=findViewById(R.id.progrssbarId);
        Thread thread = new Thread(new Runnable() {
            @Override
            public void run() {
                dowork();
                startApp();

            }
        });
        thread.start();
    }
        public void  dowork()
        {
            for(progress=20; progress<=100;progress=progress+20)
            {
                try {
                    Thread.sleep(1000);
                    progressBar.setProgress(progress);
                } catch (InterruptedException e) {
                    throw new RuntimeException(e);
                }

            }


        }
         public void  startApp ()
         {
             Intent intent=new Intent(SlapSreen.this,MainActivity.class);
             startActivity(intent);
             finish();
         }
}
