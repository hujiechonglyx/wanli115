package com.lyx.utils;

public class FileTypeUtils {
	public static boolean checkFile(String fileName) {
        //设置允许上传文件类型
        String suffixList = "txt";
        // 获取文件后缀
        String suffix = fileName.substring(fileName.lastIndexOf(".")
                + 1, fileName.length());
        if (suffixList.contains(suffix.trim().toLowerCase())) {
            return true;
        }
        return false;
    }
}
