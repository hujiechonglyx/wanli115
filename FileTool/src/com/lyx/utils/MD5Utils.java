package com.lyx.utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import sun.misc.BASE64Encoder;

//md5加密
public class MD5Utils {
//	public static String md5(String message) {
//
//		try {
//			MessageDigest md = MessageDigest.getInstance("md5");
//			byte md5[] = md.digest(message.getBytes());
//
//			BASE64Encoder encoder = new BASE64Encoder();
//			return encoder.encode(md5);
//		} catch (NoSuchAlgorithmException e) {
//			throw new RuntimeException(e);
//		}
//	}
	
	 public static String md5(String psd) {
	        try {
	            psd = psd + "novels";
	            // 1.指定加密算法类型
	            MessageDigest digest = MessageDigest.getInstance("MD5");
	            // 2.将需要加密的字符串转换成byte类型的数组，然后进行随机的哈希过程
	            byte[] bs = digest.digest(psd.getBytes());// 长度为16
	            // System.out.println(bs.length);
	            // 3.循环遍历bs，然后让其生成32位字符串，固定写法：
	            // 4.拼接字符串
	            StringBuffer stringBuffer = new StringBuffer();
	            for (byte b : bs) {
	                int i = b & 0xff;
	                // int 类型需要转换成16进制字符
	                String hexString = Integer.toHexString(i);
	                if (hexString.length() < 2) {
	                    hexString = "0" + hexString;
	                }
	                stringBuffer.append(hexString);
	            }
	            return stringBuffer.toString();

	        } catch (NoSuchAlgorithmException e) {
	            e.printStackTrace();
	        }
	        return null;
	    }
}
