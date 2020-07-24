package cn.com.bluemoon.bd.java.demo;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author: 吴梓锋
 * @Date: 2020/7/22 14:06:49
 */
@PropertySource(value = "classpath:config/env.properties", ignoreResourceNotFound = true)
@RestController
public class DemoMapping {
    @Value("${production.environment}")
    private String product;

    @RequestMapping("/get")
    public String hello() {
        return product;
    }
}
