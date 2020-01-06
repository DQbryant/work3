package service.Impl;

import Utils.Utils;
import mapper.WeatherMapper;
import org.apache.ibatis.session.SqlSession;
import pojo.Cast;
import service.GetWeatherService;
import service.UpdateDataService;

import java.util.List;

/**
 *
 */
public class GetWeatherServiceImpl implements GetWeatherService {
    public void getWeather(String city){
        //在获取天气的时候会自动更新数据
        UpdateDataService updateDataService = new UpdateDataServiceImpl();
        updateDataService.updateDateService(city);

        SqlSession session = Utils.getSqlSession();
        WeatherMapper weatherMapper = session.getMapper(WeatherMapper.class);
        List<Cast> list = weatherMapper.selectWeather(city);
        System.out.println("天气预报地区:"+city+" 未来天气情况:");
        for(Cast c:list){
            System.out.println(c);
        }
    }
}
