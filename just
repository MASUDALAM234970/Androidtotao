 /* // remove the tile bar bar
        requestWindowFeature(Window.FEATURE_NO_TITLE);

        // remove the notification bar
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
                       WindowManager.LayoutParams.FLAG_FULLSCREEN);
                       
                       */


         student_name = getResources().getStringArray(R.array.hi);

        CustomAdaptor  adaptor= new   CustomAdaptor(photos, student_name, this);

        listView.setAdapter(adaptor);
        
        
        package com.error41.myapplication;


public class CustomAdaptor  extends BaseAdapter {
    Context context;
    int []  masud;

    String [] sara;

    LayoutInflater layoutInflater;


    public CustomAdaptor(int[] masud, String[] sara, Context context) {
        this.masud = masud;
        this.sara = sara;
        this.context = context;
    }

    @Override
    public int getCount() {
        return sara.length;
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
           layoutInflater= (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        view=  layoutInflater.inflate(R.layout.sampleview,viewGroup,false);


        }

      ImageView imageView= view.findViewById(R.id.imageView258);
       TextView textView= view.findViewById(R.id.textView258);
       imageView.setImageResource(masud[i]);
       textView.setText(sara[i]);

        return view;

    }
}
         ////////////////////////////SearchView///////////////////
                    
    <SearchView
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:id="@+id/searchviewId369"
        android:queryHint="Search a Student name"
        >

    </SearchView>
       
       
       
       
       
        searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() {
         @Override
         public boolean onQueryTextSubmit(String s) {

             return false;
         }

         @Override
         public boolean onQueryTextChange(String s) {
             adapter.getFilter().filter(s);
             return false;
         }
     });
       
       //////////////////////fulscrean code/////////////////////
       
        requestWindowFeature(Window.FEATURE_ACTION_BAR);

        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
                WindowManager.LayoutParams.SOFT_INPUT_MASK_ADJUST);
       







