
ToggleButton tb;
ImageView iv;


tb=findViewById(R.id.toggleButton2);
iv=findViewById(R.id.imageView);


tb.setOnCheckedChangeListener((buttonView, isChecked) -> {
    if (isChecked) {
        iv.setImageResource(R.drawable.lighton);
    } else {
        iv.setImageResource(R.drawable.lightoff);
    }
});
