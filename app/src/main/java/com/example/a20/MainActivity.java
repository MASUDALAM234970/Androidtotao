package com.example.a20;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.renderscript.Sampler;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.CursorAdapter;
import android.widget.ListView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {


    private ListView listView;
    private  String [] collegeName;
    private int [] photos={R.drawable.polok,R.drawable.hasibur,R.drawable.yamin,R.drawable.roman,
    R.drawable.fariya,R.drawable.galib,R.drawable.shormi,R.drawable.shipon,R.drawable.humayun,
    R.drawable.saiful,R.drawable.mayaz,R.drawable.stec,R.drawable.norin,R.drawable.koushik,
     R.drawable.asif,R.drawable.mitrika,R.drawable.sojol,R.drawable.mridul,R.drawable.stec,
    R.drawable.oishee,R.drawable.mohoshin,R.drawable.sara,R.drawable.alomgir,R.drawable.rayhan,
    R.drawable.nahim,R.drawable.avijit,R.drawable.min,R.drawable.sadiya,R.drawable.tanvir,
    R.drawable.fahad,R.drawable.niloy,R.drawable.imran,R.drawable.arnika,R.drawable.masud,
    R.drawable.synthiya,R.drawable.stec,R.drawable.saimun,R.drawable.stec};

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // remove the tile bar bar
        requestWindowFeature(Window.FEATURE_NO_TITLE);

        // remove the notification bar
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN ,
                       WindowManager.LayoutParams.FLAG_FULLSCREEN
                );
        setContentView(R.layout.activity_main);

        listView =findViewById(R.id.listViewId);
         collegeName =getResources().getStringArray(R.array.Classmate_name);

          CustomAdapter adapter= new CustomAdapter(this ,collegeName,photos);
          listView.setAdapter(adapter);
    listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
        @Override
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
            String value =collegeName[i];
            Toast.makeText(MainActivity.this,value+" Positon "+ i,Toast.LENGTH_LONG).show();
        }
    });

    }
}