package service.Impl;

import Utils.Utils;
import com.alibaba.fastjson.JSONObject;
import mapper.WeatherMapper;
import org.apache.ibatis.session.SqlSession;
import pojo.Cast;
import pojo.Forecast;
import service.GetDataService;
import service.UpdateDataService;

import java.util.List;

/**
 *
 */
public class GetDataServiceImpl implements GetDataService {
    /**
     * 把所有省会以及直辖市的天气都存储到数据库里,这个方法并没有把过期数据删除,只是单纯的插入数据
     */
    public void getDataService() {
        SqlSession session = Utils.getSqlSession();
        if(session!=null) {
            WeatherMapper weatherMapper = session.getMapper(WeatherMapper.class);
            List<Integer> list = weatherMapper.selectCity();        //得到所有城市的acode
            for (int i : list) {
                String temp = Utils.getJson(i);
                Forecast forecast = JSONObject.parseObject(temp).getJSONArray("forecasts").getJSONObject(0).toJavaObject(Forecast.class);
                List<Cast> casts = forecast.getCasts();
                for (Cast c : casts) {
                    c.setCity(forecast.getCity());
                    weatherMapper.insert(c);
                }
            }
            session.commit();
            session.close();
        }
    }
}
