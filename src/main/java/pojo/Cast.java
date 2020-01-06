package pojo;

/**
 *
 */
public class Cast {
    private String city;
    private String date;
    private int week;
    private String dayweather;
    private String nightweather;
    private int daytemp;
    private int nighttemp;
    private String  daywind;
    private String nightwind;
    private String daypower;
    private String nightpower;

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String  getDate() {
        return date;
    }

    public void setDate(String  date) {
        this.date = date;
    }

    public int getWeek() {
        return week;
    }

    public void setWeek(int week) {
        this.week = week;
    }

    public String getDayweather() {
        return dayweather;
    }

    public void setDayweather(String dayweather) {
        this.dayweather = dayweather;
    }

    public String getNightweather() {
        return nightweather;
    }

    public void setNightweather(String nightweather) {
        this.nightweather = nightweather;
    }

    public int getDaytemp() {
        return daytemp;
    }

    public void setDaytemp(int daytemp) {
        this.daytemp = daytemp;
    }

    public int getNighttemp() {
        return nighttemp;
    }

    public void setNighttemp(int nighttemp) {
        this.nighttemp = nighttemp;
    }

    public String getDaywind() {
        return daywind;
    }

    public void setDaywind(String daywind) {
        this.daywind = daywind;
    }

    public String getNightwind() {
        return nightwind;
    }

    public void setNightwind(String nightwind) {
        this.nightwind = nightwind;
    }

    public String getDaypower() {
        return daypower;
    }

    public void setDaypower(String daypower) {
        this.daypower = daypower;
    }

    public String getNightpower() {
        return nightpower;
    }

    public void setNightpower(String nightpower) {
        this.nightpower = nightpower;
    }

    @Override
    public String toString() {
        return "Cast{" +
                "date='" + date + '\'' +
                ", week=" + week +
                ", dayweather='" + dayweather + '\'' +
                ", nightweather='" + nightweather + '\'' +
                ", daytemp=" + daytemp +
                ", nighttemp=" + nighttemp +
                ", daywind='" + daywind + '\'' +
                ", nightwind='" + nightwind + '\'' +
                ", daypower='" + daypower + '\'' +
                ", nightpower='" + nightpower + '\'' +
                '}';
    }
}
