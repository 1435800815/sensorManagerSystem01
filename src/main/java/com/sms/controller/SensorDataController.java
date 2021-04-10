package com.sms.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sms.domain.SensorData;
import com.sms.service.SensorDataService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class SensorDataController {

    @Autowired
    private SensorDataService service;

    @RequestMapping("/querySensorData.do")
    public String querySensorData(Model model, @RequestParam(defaultValue = "1",value = "page")Integer page, @RequestParam(defaultValue = "10",value = "pageSize")Integer pageSize){
        PageHelper.startPage(page, pageSize);
        List<SensorData> sensorDataList = service.findAllSensorData();
        PageInfo<SensorData> pageInfo = new PageInfo<SensorData>(sensorDataList);
        model.addAttribute("pageInfo",pageInfo);
        return "tables";
    }
}
