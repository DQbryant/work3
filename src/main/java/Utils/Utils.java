package Utils;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 *
 */
public class Utils {
    /**
     * 产生一个SqlSession对象
     * @return
     */
    public static SqlSession getSqlSession(){
        InputStream is = null;
        try {
            is = Resources.getResourceAsStream("mybatis.xml");
            SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(is);
            return factory.openSession();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    /**
     * 用城市的acode获取JSON字符串
     * @param acode
     * @return JSON字符串
     */
    public static String getJson(int acode){
        URL url= null;
        HttpURLConnection connection = null;
        try {
            url = new URL("https://restapi.amap.com/v3/weather/weatherInfo?city="+acode+"&key=c9f06cc2d2bf78dfad2f9d0bf198d4b5&extensions=all&output=JSON");
            connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("GET");
            BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));
            String temp = null;
            StringBuilder builder = new StringBuilder();
            while ((temp = reader.readLine()) != null) {
                builder.append(temp);
            }
            return builder.toString();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return "";
    }
}
