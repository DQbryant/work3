package mapper;

import pojo.Cast;

import java.util.List;

/**
 *
 */
public interface WeatherMapper {
    void insert(Cast cast);     //插入单条预报数据
    List<Integer> selectCity(); //获取所有城市的acode的集合
    int selectOne(String city); //获取单个城市的acode
    void deleteOne(String city);//删除单个城市的无用天气预报
    List<Cast> selectWeather(String city);//获取单个城市的天气预报的集合
}
