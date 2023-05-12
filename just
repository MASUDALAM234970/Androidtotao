


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
     /* // remove the tile bar bar
        requestWindowFeature(Window.FEATURE_NO_TITLE);

        // remove the notification bar
        getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
                       WindowManager.LayoutParams.FLAG_FULLSCREEN);
                       
                       */

                 /////////////////////MediaPlayers////////////////////////////

    @Override
    protected void onDestroy() {

        if (   mediaPlayer!=null   &&   mediaPlayer.isPlaying())

        {

            mediaPlayer.stop();
            mediaPlayer.release();

            mediaPlayer=null;
        }

        super.onDestroy();
    }
    
    
     if (view.getId()==R.id.musicButtonplayId)
        {
           if (mediaPlayer!=null)
           {

               mediaPlayer.start();
               Toast.makeText(getApplicationContext(),"Song played",Toast.LENGTH_LONG).show();
           }


            }


        if (view.getId()==R.id.musicButtonpauseId)
        {
            if (mediaPlayer!=null)
            {

                mediaPlayer.pause();
                Toast.makeText(getApplicationContext(),"Song pause",Toast.LENGTH_LONG).show();
            }


        }
        
            mediaPlayer= MediaPlayer.create(this,R.raw.taravati);
    
            /* 
                //////////////////////////MenuinFlater/////////////////       

  <item

        android:title="Share"
        android:id="@+id/share"
        app:showAsAction="always"
        android:icon="@android:drawable/ic_menu_share"
        />


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {


        MenuInflater menuInflater=getMenuInflater();
        menuInflater.inflate(R.menu.menu,menu);

        return super.onCreateOptionsMenu(menu);
    }

    @Override
    public boolean onOptionsItemSelected(@NonNull MenuItem item) {

      if (item.getItemId()==R.id.share)

      {
          Intent intent=new Intent(Intent.ACTION_SEND);

          intent.setType("text/tpye");
          String subject =" C programing app";
          String body= "this help is very useful to learn c programing . com.error41.myapplication;";

          intent.putExtra(Intent.EXTRA_SUBJECT,subject);
          intent.putExtra(Intent.EXTRA_TEXT,body);

          startActivity(Intent.createChooser(intent,"Share with"));



      }
        return super.onOptionsItemSelected(item);
    }



     /////////////////Autocompletetextview///////////////////
     
     
     
        autoCompleteTextView=findViewById(R.id.autoCompleteId159);
        String [] student_name=getResources().getStringArray(R.array.hi);

        ArrayAdapter<String> adapter=new ArrayAdapter<>(this, android.R.layout.simple_list_item_1,student_name);
        autoCompleteTextView.setThreshold(1);
        autoCompleteTextView.setAdapter(adapter);

   /////////////////Autocompletetextview///////////////////

////////////////////////////itext7 paragraph topic added /////////////////



      Paragraph paragraph= new Paragraph(" helo i am masud alam");

      Text text= new Text("Bold").setBold();
      Text text1= new Text("Bold").setItalic();
      Text text2= new Text("Bold").setUnderline();

      Paragraph paragraph1= new Paragraph();
      paragraph1.add(text);
      paragraph1.add(text1);
      paragraph1.add(text2);

      document.add(paragraph);
      document.add(paragraph1);

////////////////////////////itext7 List topic added /////////////////

      List list= new List();

      list.add("masud");
      list.add("Alam");
      list.add("Alam");
      list.add("Sara");
      list.add("Oishee");
      list.add("Monika");

     document.add(list);
     
     
      ////////////////////////////itext7 Image topic added /////////////////
      Drawable d= getDrawable(R.drawable.justwow);

      Bitmap bitmap= ((BitmapDrawable)d).getBitmap();
      ByteArrayOutputStream stream= new ByteArrayOutputStream();
      bitmap .compress(Bitmap.CompressFormat.PNG,100,stream);

      byte [] bitmapData= stream.toByteArray();

      ImageData imageData= ImageDataFactory.create(bitmapData);
      Image image = new Image(imageData);

      image.setHeight(100);
      image.setWidth(100);
      document.add(image);
      
        ////////////////////////////itext7 Table topic added /////////////////
  Border border= new GrooveBorder(2);
      float columWith [] ={200f,200f};
      Table table= new Table(columWith);
      table.addCell("Name");
      table.addCell("Age");

      table.addCell(new Cell().setBackgroundColor(Color.GREEN).add(new Paragraph("MASUD ALAM ")));
      table.addCell(new Cell().setBackgroundColor(Color.GREEN).add(new Paragraph("22")));

      table.addCell(new Cell().setBackgroundColor(Color.BLUE).add(new Paragraph("MASUD ALAM ")));
      table.addCell(new Cell().setBackgroundColor(Color.BLUE).add(new Paragraph("22")));

      table.addCell(new Cell().setBackgroundColor(Color.YELLOW).add(new Paragraph("MASUD ALAM ")));
      table.addCell(new Cell().setBackgroundColor(Color.YELLOW).add(new Paragraph("22")));
      table.addCell("Monika");
      table.addCell("22");

      table.addCell("Oishee");
      table.addCell("22");

      table.addCell("Soytan1");
      table.addCell("22");
      document.setBorder(border);
      document.add(table);
