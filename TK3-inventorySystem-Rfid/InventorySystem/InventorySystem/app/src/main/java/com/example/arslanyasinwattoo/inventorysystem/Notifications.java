package com.example.arslanyasinwattoo.inventorysystem;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.AsyncTask;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.widget.TextView;
import android.widget.Toast;

import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Timer;
import java.util.TimerTask;

/**
 * Created by Arslanyasinwattoo on 7/10/2016.
 */
public class Notifications extends AppCompatActivity {
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.temperature);
        new HttpAsyncTask().execute("http://simil.cloudapp.net/SmartFridgeServer/Api/Fridge/DoorIsOpened");
    }



    public static String GET(String url) {
        InputStream inputStream = null;
        String result = "";
        try {

            // create HttpClient
            HttpClient httpclient = new DefaultHttpClient();

            // make GET request to the given URL
            HttpResponse httpResponse = httpclient.execute(new HttpGet(url));

            // receive response as inputStream
            inputStream = httpResponse.getEntity().getContent();

            // convert inputstream to string
            if (inputStream != null)
                result = convertInputStreamToString(inputStream);
            else
                result = "Did not work!";

        } catch (Exception e) {
            Log.d("InputStream", e.getLocalizedMessage());
        }

        return result;
    }

    private static String convertInputStreamToString(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        String line = "";
        String result = "";
        while ((line = bufferedReader.readLine()) != null)
            result += line;

        inputStream.close();
        return result;

    }

    public boolean isConnected() {
        ConnectivityManager connMgr = (ConnectivityManager) getSystemService(Activity.CONNECTIVITY_SERVICE);
        NetworkInfo networkInfo = connMgr.getActiveNetworkInfo();
        if (networkInfo != null && networkInfo.isConnected())
            return true;
        else
            return false;
    }


    private class HttpAsyncTask extends AsyncTask<String, Void, String> {
        @Override
        protected String doInBackground(String... urls) {

            return GET(urls[0]);
        }

        // onPostExecute displays the results of the AsyncTask.
        @Override
        protected void onPostExecute(String result) {
            Log.d("Testing", result);
            //try {
            Toast.makeText(getBaseContext(), "Recieve", Toast.LENGTH_LONG).show();
            // JSONArray items = new JSONArray(result);
            int temp = 0;
           String value =result;
           // temp = Integer.parseInt(result);
            TextView text1= (TextView) findViewById(R.id.textView2);
            text1.setText("Door");
            TextView text= (TextView) findViewById(R.id.textView4);


            if(value.equalsIgnoreCase("True")){
                text.setText("The Door is open!!");

            }else if (value.equalsIgnoreCase("False")){
                text.setText("The Door is closed");

            }
            Log.d("Testing", value);
            // TextView text= (TextView) findViewById(R.id.textView4);
            //text.setText(""+temp+"C");
            // }catch(JSONException e){
            //e.printStackTrace();
            // }
        }
    }
}