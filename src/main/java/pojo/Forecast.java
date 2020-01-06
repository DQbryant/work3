package pojo;

import java.util.Date;
import java.util.List;

/**
 *
 */
public class Forecast {
    private String city;
    private int adcode;
    private String province;
    private Date reporttime;
    private List<Cast> casts;

    public Forecast() {
    }

    public List<Cast> getCasts() {
        return casts;
    }

    public void setCasts(List<Cast> casts) {
        this.casts = casts;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public int getAdcode() {
        return adcode;
    }

    public void setAdcode(int adcode) {
        this.adcode = adcode;
    }

    public String getProvince() {
        return province;
    }

    public void setProvince(String province) {
        this.province = province;
    }

    public Date getReporttime() {
        return reporttime;
    }

    public void setReporttime(Date reporttime) {
        this.reporttime = reporttime;
    }

    @Override
    public String toString() {
        return "Forecast{" +
                "city='" + city + '\'' +
                ", adcode=" + adcode +
                ", province='" + province + '\'' +
                ", reporttime='" + reporttime + '\'' +
                ", casts='" + casts + '\'' +
                '}';
    }
}
