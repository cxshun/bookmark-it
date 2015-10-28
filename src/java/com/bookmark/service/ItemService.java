package com.bookmark.service;

import com.bookmark.dao.ItemDao;
import com.bookmark.domain.Item;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by shun on 2015/10/28.
 */
@Service
public class ItemService {

    @Autowired
    private ItemDao itemDao;

    /**
     * 创建项目
     * @param item
     * @return
     */
    public boolean create(Item item) {
        return itemDao.create(item);
    }

    /**
     * 删除项目
     * @param id
     * @return
     */
    public boolean delete(int id) {
        return itemDao.delete(id);
    }

    /**
     * 项目列表
     * @param page
     * @param pageSize
     * @return
     */
    public List<Item> list(int page, int pageSize) {
        return itemDao.list(page, pageSize);
    }

}
