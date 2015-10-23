package com.bookmark.util;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.fit.cssbox.demo.ImageRenderer;
import org.xml.sax.SAXException;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 * Created by shun on 2015/10/23.
 */
public class ImageUtil {

    private static Log logger = LogFactory.getLog(ImageUtil.class);

    public static String saveUrlSnapshot(String url) {
        String filePath = new File(url.substring(url.lastIndexOf("/") + 1) + "-snapshot.jpg").getAbsolutePath();
        try {
            ImageRenderer imageRenderer = new ImageRenderer();
            FileOutputStream out = new FileOutputStream(filePath);
            imageRenderer.renderURL(url, out, ImageRenderer.Type.PNG);
        } catch (IOException e) {
            logger.error(e.getMessage(), e);
        } catch (SAXException e) {
            logger.error(e.getMessage(), e);
        }
        return filePath;
    }

    public static void main(String[] args) {
        saveUrlSnapshot("http://www.baidu.com");
    }

}
