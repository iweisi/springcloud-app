package com.wangsong.system.api.impl;

import com.wangsong.common.controller.BaseController;
import com.wangsong.common.model.CodeEnum;
import com.wangsong.common.model.Result;
import com.wangsong.system.model.Resources;
import com.wangsong.system.model.User;
import com.wangsong.system.service.ResourcesService;
import com.wangsong.system.service.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;


@Controller
@RequestMapping("/api")
@Api(value = "SystemAPI")
public class SystemAPIImpl extends BaseController {


    @Autowired
    private UserService userService;

    @Autowired
    private ResourcesService resourcesService;

    @ApiOperation(value = "获取用户", httpMethod = "POST")
    @RequestMapping(value = "/getUser", method = RequestMethod.POST)
    @ResponseBody
    public Result<User> getUser(@RequestBody User u) {
        return new Result(CodeEnum.SUCCESS.getCode(), userService.findTByT(u));
    }

    @ApiOperation(value = "获取权限", httpMethod = "POST")
    @RequestMapping(value = "/getResources", method = RequestMethod.POST)
    @ResponseBody
    public Result<List<Resources>> getResources(@RequestBody Resources r) {
        return new Result(CodeEnum.SUCCESS.getCode(), resourcesService.findTByT(r));
    }


}
