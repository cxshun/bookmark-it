package com.bookmark.controller;

import com.bookmark.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by shun on 2015/10/28.
 */
@Controller
@RequestMapping("/item")
public class Item {

    @Autowired
    private ItemService itemService;
    private static final int DEFAULT_PAGESIZE = 10;

    /**
     * 创建项目
     * @param item
     * @return
     */
    @RequestMapping(value = "/create", method = {RequestMethod.POST}, produces = {"application/json"})
    public Object create(@ModelAttribute com.bookmark.domain.Item item) {
        itemService.create(item);
        Map<String, Boolean> map = new HashMap<String, Boolean>();
        map.put("result", true);
        return map;
    }

    /**
     * 删除项目
     * @param id
     * @return
     */
    @RequestMapping("/delete/{id}")
    public ModelAndView delete(int id) {
        itemService.delete(id);
        ModelAndView mav = new ModelAndView();
        return mav;
    }

    /**
     * 项目列表
     * @param page
     * @return
     */
    @RequestMapping("/list/{page}")
    public ModelAndView list(int page) {
        List<com.bookmark.domain.Item> itemList = itemService.list(page, DEFAULT_PAGESIZE);
        ModelAndView mav = new ModelAndView();
        mav.addObject("items", itemList);
        return mav;
    }

}
