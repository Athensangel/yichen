package com.yichen.utils;

/**
 * 响应代码 Enum
 * <p>
 * 10000 -默认成功信息 20000-默认失败信息
 * </p>
 * <p>
 * 小于10000用于定义共通信息； 10000-19999用于定义 提示（info）、警告（warning）信息； 20001以上用于定义 错误（error）信息。
 * </p>
 */
public enum ResponseCode {
    /* 默认成功信息 */
    SUCCESS(10000, "处理成功"),
    /* 默认失败信息 */
    FAIL(20000, "处理失败"),
    /* 默认失败信息 */
    CHECK_FAIL(30000, "该登录名已被占用"),
    UNAUTHORIZED(401,"抱歉，操作权限不足"),
    MAX_UPLOAD_SIZE_EXCEEDED(460, "抱歉，文件大小超过限制"),
    
    /* 保存成功信息 */
    SAVE_SUCCESS(10000,"保存成功"),
    /* 保存失败信息 */
    SAVE_FAIL(20000,"保存失败"),
    
    /* 删除成功信息 */
    DEL_SUCCESS(10000,"删除成功"),
    /* 删除失败信息 */
    DEL_FAIL(20000,"删除失败"),
	/* 自定义菜单最多包括3个一级菜单 */
	MENU_LEV1_MAX(10001,"一级菜单最多只能有3个"),
	/* 每个一级菜单最多包含5个二级菜单 */
	MENU_LEV2_MAX(10001,"二级菜单最多只能有5个");


    private int code;
    private String message;

    ResponseCode(int code, String message) {
        this.code = code;
        this.message = message;
    }

    public int code() {
        return code;
    }

    public String message() {
        return message;
    }
}
