package com.wangsong.system.api;

import com.wangsong.common.model.Result;
import com.wangsong.system.model.Resources;
import com.wangsong.system.model.User;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@FeignClient("springcloud-app-system")
public interface SystemAPI {


    @RequestMapping(value = "/springcloud-app-system/api/getUser", method = RequestMethod.POST)
    Result<User> getUser(@RequestBody User u);

    @RequestMapping(value = "/springcloud-app-system/api/getResources", method = RequestMethod.POST)
    Result<List<Resources>> getResources(@RequestBody Resources r);
}