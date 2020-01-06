package test;

import service.GetDataService;
import service.GetWeatherService;
import service.Impl.GetDataServiceImpl;
import service.Impl.GetWeatherServiceImpl;
import service.Impl.UpdateDataServiceImpl;
import service.UpdateDataService;

/**
 *
 */
public class Test {
    public static void main(String[] args) {
        GetDataService getDataService = new GetDataServiceImpl();   //获取所有省会直辖市的天气,不会自动删除过期数据
        getDataService.getDataService();

        UpdateDataService updateDataService = new UpdateDataServiceImpl();//如果要更新天气就调用这个接口
        updateDataService.updateDateService("乌鲁木齐市");

        GetWeatherService weatherService = new GetWeatherServiceImpl();
        weatherService.getWeather("重庆市");   //查询单个城市的天气预报,这其中会更新该城市的天气
    }
}
