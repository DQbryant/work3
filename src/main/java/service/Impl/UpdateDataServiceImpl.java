package service.Impl;

import Utils.Utils;
import com.alibaba.fastjson.JSONObject;
import mapper.WeatherMapper;
import org.apache.ibatis.session.SqlSession;
import pojo.Cast;
import pojo.Forecast;
import service.UpdateDataService;

import java.util.List;

/**
 *
 */
public class UpdateDataServiceImpl implements UpdateDataService {
    public void updateDateService(String city) {
        SqlSession session = Utils.getSqlSession();
        WeatherMapper weatherMapper = session.getMapper(WeatherMapper.class);
        weatherMapper.deleteOne(city);                                          //删除该城市的无用天气预报数据
        int acode = weatherMapper.selectOne(city);                              //获取城市的acode
        String temp = Utils.getJson(acode);                                     //通过城市acode获取JSON字符串
        Forecast forecast = JSONObject.parseObject(temp).getJSONArray("forecasts").getJSONObject(0).toJavaObject(Forecast.class);//获取预报对象
        List<Cast> casts = forecast.getCasts();
        for (Cast c : casts) {              //插入数据时,如果存在城市相同且日期相同的数据会替代
            c.setCity(forecast.getCity());
            weatherMapper.insert(c);
        }
        session.commit();
        session.close();
    }
}
