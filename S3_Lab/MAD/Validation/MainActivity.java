package com.example.validation;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.graphics.Insets;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

public class MainActivity extends AppCompatActivity {
    EditText e1,e2,e3;
    Button b1;

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

        e1=findViewById(R.id.editTextText);
        e2=findViewById(R.id.editTextText2);
        e3=findViewById(R.id.editTextText3);
        b1=findViewById(R.id.button2);

        b1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String name = e1.getText().toString().trim();
                String email = e2.getText().toString().trim();
                String password =e3.getText().toString().trim();

                Toast.makeText(MainActivity.this, "validate", Toast.LENGTH_SHORT).show();

                if (name.isEmpty()) {
                    e1.setError("Name is required");
                    e1.requestFocus();
                    return;
                }

                if (email.isEmpty()) {
                    e2.setError("Email is required");
                    e2.requestFocus();
                    return;
                }

                if (!android.util.Patterns.EMAIL_ADDRESS.matcher(email).matches()) {
                    e2.setError("Enter a valid email");
                    e2.requestFocus();
                    return;
                }

                if (password.isEmpty()) {
                    e3.setError("Password is required");
                    e3.requestFocus();
                    return;
                }

                if (password.length() < 6) {
                    e3.setError("Password must be at least 6 characters");
                    e3.requestFocus();
                    return;
                }

                // If all validations pass, you can proceed here
                Toast.makeText(MainActivity.this, "Validation Passed!", Toast.LENGTH_SHORT).show();
            }
        });

    }
}