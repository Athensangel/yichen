package com.yichen.utils;

import java.util.UUID;

/**
 * 生成UUID
 * @author Administrator
 *
 */
public class UUIDUtil {
	
	public static String getUUID() {
		String s = UUID.randomUUID().toString();
		return s.substring(0, 8) + s.substring(9, 13) + s.substring(14, 18) + s.substring(19, 23) + s.substring(24);
	}

}
