package com.example.a20;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

public class CustomAdapter extends BaseAdapter {

  int [] photos;
  String [] college_name;
  Context context;
  private LayoutInflater inflater;

  CustomAdapter( Context context, String [] college_name, int []  photos)
  {
      this.context=context;
      this.college_name=college_name;
      this.photos=photos;
  }
    @Override
    public int getCount() {
        return college_name.length;
    }

    @Override
    public Object getItem(int i) {
        return null;
    }

    @Override
    public long getItemId(int i) {
        return 0;
    }

    @Override
    public View getView(int i, View view, ViewGroup viewGroup) {

      if (view==null)
      {
          inflater= (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);

          view= inflater.inflate(R.layout.sampleview,viewGroup,false);

      }

      ImageView imageView=view.findViewById(R.id.imageviewsample);
        TextView textView= view.findViewById(R.id.college_descriptionIdsample);

        imageView.setImageResource(photos[i]);
        textView.setText(college_name[i]);
        return view;
    }
}
