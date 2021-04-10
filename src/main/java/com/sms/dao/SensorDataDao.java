package com.sms.dao;

import com.sms.domain.SensorData;

import java.util.List;

public interface SensorDataDao {
    List<SensorData> selectAllSensorData();
}
