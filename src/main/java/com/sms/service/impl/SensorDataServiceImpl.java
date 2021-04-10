package com.sms.service.impl;

import com.github.pagehelper.PageHelper;
import com.sms.dao.SensorDataDao;
import com.sms.domain.SensorData;
import com.sms.service.SensorDataService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

//@Transactional
@Service
public class SensorDataServiceImpl implements SensorDataService {

    @Autowired
    private SensorDataDao sensorDataDao;

//    public void setSensorDataDao(SensorDataDao sensorDataDao) {
//        this.sensorDataDao = sensorDataDao;
//    }

    @Override
    public List<SensorData> findAllSensorData() {
//        PageHelper.startPage(1,10);
        List<SensorData> sensorDataList = sensorDataDao.selectAllSensorData();
        return sensorDataList;
    }


}
