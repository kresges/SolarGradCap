package com.example.aniket.seniordesign;

import android.app.Activity;
import android.app.AlertDialog;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.Toast;

import java.io.IOException;
import java.util.ArrayList;

public class MainActivity extends Activity {

    public Bluetooth bt;
    public boolean bluetoothConnected = false;

    Button fanButton;
    Button ledButton1;
    Button ledButton2;
    Button ledButton3;
    Button phoneButton;

    boolean bluetoothStarted = false;
    public MainActivity() {
        if (bluetoothStarted) {


        } else {

        }
    }

    private String deviceUUID;

    @Override
    public void onStart() {
        super.onStart();
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setMessage("Please connect via Bluetooth and restart the application").setTitle("Enable Bluetooth");
        AlertDialog btOffAlert = builder.create();

        BluetoothAdapter mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
        if (mBluetoothAdapter == null) finish();
        if (!mBluetoothAdapter.isEnabled()) {
            Intent enableBtIntent = new Intent(BluetoothAdapter.ACTION_REQUEST_ENABLE);
            startActivityForResult(enableBtIntent, 3);
        }

        boolean bluetoothOpen = false;
        if (bt.isConnected()) {
            Toast toast = Toast.makeText(this, "Grad Cap is already connected", Toast.LENGTH_LONG);
            toast.show();
        } else {
            if (bt.findBT(mBluetoothAdapter) == -1) return;
            try {
                bluetoothOpen = bt.openBT();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        /*if (bt.isConnected()) {
            try {
                bt.sendData((byte)'T');
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                bt.sendData((byte)'E');
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                bt.sendData((byte)'S');
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                bt.sendData((byte)'T');
            } catch (IOException e) {
                e.printStackTrace();
            }
        }*/
    }

    public void fanButtonPressed(View view) {
        if (bt.isConnected()) {
            try {
                bt.sendData((byte) 'F');
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public void ledButton1Pressed(View view) {
        if (bt.isConnected()) {
            try {
                bt.sendData((byte) 'A');
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public void ledButton2Pressed(View view) {
        if (bt.isConnected()) {
            try {
                bt.sendData((byte) 'B');
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public void ledButton3Pressed(View view) {
        if (bt.isConnected()) {
            try {
                bt.sendData((byte) 'C');
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    public void phoneButtonPressed(View view) {
        if (bt.isConnected()) {
            try {
                bt.sendData((byte) 'P');
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        bt = new Bluetooth(getApplicationContext(), this);

        fanButton = (Button) findViewById(R.id.fanButton);
        ledButton1 = (Button) findViewById(R.id.ledButton1);
        ledButton2 = (Button) findViewById(R.id.ledButton2);
        ledButton3 = (Button) findViewById(R.id.ledButton3);
        phoneButton = (Button) findViewById(R.id.phoneButton);

        fanButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                fanButtonPressed(view);
            }
        });
        ledButton1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                ledButton1Pressed(view);
            }
        });
        ledButton2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                ledButton2Pressed(view);
            }
        });
        ledButton3.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                ledButton3Pressed(view);
            }
        });
        phoneButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                phoneButtonPressed(view);
            }
        });
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();
        if (id == R.id.action_settings) {
            return true;
        }
        return super.onOptionsItemSelected(item);
    }
}
