package com.example.fruit_adapter;

import android.os.Bundle;
import android.widget.ListView;
import android.widget.SimpleAdapter;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Objects;

public class MainActivity extends AppCompatActivity {

    ListView listView;
    String[] fruits_name = {
            "kiwi","orange","strawberry"
    };
    int[] list_fruit_image= {
            R.drawable.kiwi,
            R.drawable.orange,
            R.drawable.strawberry
    } ;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable(this);
        setContentView(R.layout.activity_main);
        ViewCompat.setOnApplyWindowInsetsListener(findViewById(R.id.main), (v, insets) -> {
            Insets systemBars = insets.getInsets(WindowInsetsCompat.Type.systemBars());
            v.setPadding(systemBars.left, systemBars.top, systemBars.right, systemBars.bottom);
            return insets;
        });
        listView=findViewById(R.id.listview1);
        ArrayList<HashMap<String,Object>> list=new ArrayList<>();
        for (int i=0;i<fruits_name.length;i++){
            HashMap<String,Object> map =new HashMap<>();
            map.put("fruitsname",fruits_name[i]);
            map.put("fruitsimage",list_fruit_image[i]);
            list.add(map);

        }
          String [] from={"fruitsname","fruitsimage"};
        int [] to = {R.id.textView2,R.id.imageView};
        SimpleAdapter simpleAdapter=new SimpleAdapter(getApplicationContext(),list,R.layout.friuts_list,from,to);
        listView.setAdapter(simpleAdapter);
    }


}