
EditText e1,e2;
Button b1;
   
e1=(EditText)findViewById(R.id.editTextText);
e2=(EditText) findViewById(R.id.editTextText2);
b1=(Button) findViewById(R.id.button2);
       
       
b1.setOnClickListener(new View.OnClickListener() {
    @Override
    public void onClick(View v) {
        String username=e1.getText().toString();
        String passwoard=e2.getText().toString();
        if (username.equals("Admin")&&passwoard.equals("1234"))
        {
            Toast.makeText(MainActivity.this,"welcome"+username,Toast.LENGTH_SHORT).show();
        }else{
            Toast.makeText(MainActivity.this,"Invalid username or password",Toast.LENGTH_SHORT).show();
        }
    }
});
