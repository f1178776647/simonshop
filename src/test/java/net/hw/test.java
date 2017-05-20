package net.hw;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by admin on 2017/4/15.
 */
public class test {
    public static void main(String[] args) throws ParseException {
        String d = "1480639235000";
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date date = sdf.parse(String.valueOf(new Date()));
        System.out.println(date);
    }
}
