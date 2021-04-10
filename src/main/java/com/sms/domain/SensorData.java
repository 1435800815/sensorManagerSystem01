package com.sms.domain;

import lombok.Data;

import java.sql.Time;
import java.sql.Date;

@Data
public class SensorData {
    private Integer id;
    private String DTU_id;
    private String device_id;
    private String channel_id;
    private String date;
    private Time time;
    private Double temperature;
    private Double frequency;

}
