package com.bookmark.dao;

import com.bookmark.domain.Item;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;

/**
 * Created by shun on 2015/10/28.
 */
@Repository
public class ItemDao {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public void setJdbcTemplate(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    /**
     * 创建项目
     * @param item
     * @return
     */
    public boolean create(Item item) {
        String sql = "insert into item(title, logo_url, url, intro) values('%s', '%s', '%s', '%s')";
        return jdbcTemplate.update(String.format(sql, item.getTitle(), item.getLogoUrl(), item.getUrl(), item.getIntro())) > 0;
    }

    /**
     * 删除项目
     * @param id
     * @return
     */
    public boolean delete(int id) {
        String sql = "delete from item where id = %d";
        return jdbcTemplate.update(String.format(sql, id)) > 0;
    }

    /**
     * 查询项目列表
     * @param page
     * @param pageSize
     * @return
     */
    public List<Item> list(int page, int pageSize) {
        jdbcTemplate.setFetchSize(pageSize);
        jdbcTemplate.setMaxRows((page - 1) * pageSize);
        return jdbcTemplate.queryForList("select * from item", Item.class);
    }

}
