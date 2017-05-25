package com.yichen.utils;

import java.io.File;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.commons.mail.HtmlEmail;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;

import freemarker.template.Configuration;
import freemarker.template.Template;

/**
 * 发送电子邮件
 */
public class SendMailUtil {

	private static final String from = "if2losemyself@126.com";
	private static final String fromName = "弈辰棋社密码找回";
	private static final String charSet = "utf-8";
	private static final String username = "if2losemyself@126.com";
	private static final String password = "708deaiqing";

	private static Map<String, String> hostMap = new HashMap<String, String>();
	static {
		// 126
		hostMap.put("smtp.126", "smtp.126.com");
		// qq
		hostMap.put("smtp.qq", "smtp.qq.com");

		// 163
		hostMap.put("smtp.163", "smtp.163.com");

		// sina
		hostMap.put("smtp.sina", "smtp.sina.com.cn");

		// tom
		hostMap.put("smtp.tom", "smtp.tom.com");

		// 263
		hostMap.put("smtp.263", "smtp.263.net");

		// yahoo
		hostMap.put("smtp.yahoo", "smtp.mail.yahoo.com");

		// hotmail
		hostMap.put("smtp.hotmail", "smtp.live.com");

		// gmail
		hostMap.put("smtp.gmail", "smtp.gmail.com");

		hostMap.put("smtp.port.gmail", "465");
		hostMap.put("smtp.port", "25");
	}

	public static String getHost(String email) throws Exception {
		Pattern pattern = Pattern.compile("\\w+@(\\w+)(\\.\\w+){1,2}");
		Matcher matcher = pattern.matcher(email);
		String key = "unSupportEmail";
		if (matcher.find()) {
			key = "smtp." + matcher.group(1);
		}
		if (hostMap.containsKey(key)) {
			return hostMap.get(key);
		} else {
			throw new Exception("unSupportEmail");
		}
	}

	public static int getSmtpPort(String email) throws Exception {
		Pattern pattern = Pattern.compile("\\w+@(\\w+)(\\.\\w+){1,2}");
		Matcher matcher = pattern.matcher(email);
		String key = "unSupportEmail";
		if (matcher.find()) {
			key = "smtp.port." + matcher.group(1);
		}
		if (hostMap.containsKey(key)) {
			return Integer.parseInt(hostMap.get(key));
		} else {
			return 25;
		}
	}

	/**
	 * 发送模板邮件
	 * 
	 * @param toMailAddr
	 *            收信人地址
	 * @param subject
	 *            email主题
	 * @param templatePath
	 *            模板地址
	 * @param map
	 *            模板map
	 */
	public static void sendFtlMail(String toMailAddr, String subject,
			String templatePath, Map<String, Object> map) {
		Template template = null;
		Configuration freeMarkerConfig = null;
		HtmlEmail hemail = new HtmlEmail();
		try {
			hemail.setHostName(getHost(from));
			hemail.setSmtpPort(getSmtpPort(from));
			hemail.setCharset(charSet);
			hemail.addTo(toMailAddr);
			hemail.setFrom(from, fromName);
			hemail.setAuthentication(username, password);
			hemail.setSubject(subject);
			freeMarkerConfig = new Configuration();
			freeMarkerConfig.setDirectoryForTemplateLoading(new File(
					getFilePath()));
			template = freeMarkerConfig.getTemplate(getFileName(templatePath),
					new Locale("Zh_cn"), "UTF-8");
			String htmlText = FreeMarkerTemplateUtils
					.processTemplateIntoString(template, map);
			System.out.println(htmlText);
			hemail.setMsg(htmlText);
			hemail.send();
			System.out.println("email send true!");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("email send error!");
		}
	}

	/**
	 * 发送普通邮件
	 * 
	 * @param toMailAddr
	 *            收信人地址
	 * @param subject
	 *            email主题
	 * @param message
	 *            发送email信息
	 */
	public static void sendCommonMail(String toMailAddr, String subject,
			String message) {
		HtmlEmail hemail = new HtmlEmail();
		try {
			hemail.setHostName(getHost(from));
			hemail.setSmtpPort(getSmtpPort(from));
			hemail.setCharset(charSet);
			hemail.addTo(toMailAddr);
			hemail.setFrom(from, fromName);
			hemail.setAuthentication(username, password);
			hemail.setSubject(subject);
			hemail.setMsg(message);
			hemail.send();
			System.out.println("email send true!");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("email send error!");
		}

	}

	public static String getHtmlText(String templatePath,
			Map<String, Object> map) {
		Template template = null;
		String htmlText = "";
		try {
			Configuration freeMarkerConfig = null;
			freeMarkerConfig = new Configuration();
			freeMarkerConfig.setDirectoryForTemplateLoading(new File(
					getFilePath()));
			template = freeMarkerConfig.getTemplate(getFileName(templatePath),
					new Locale("Zh_cn"), "UTF-8");
			htmlText = FreeMarkerTemplateUtils.processTemplateIntoString(
					template, map);
			System.out.println(htmlText);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return htmlText;
	}

	private static String getFilePath() {
		String path = getAppPath(SendMailUtil.class);
		path = path + File.separator + "mailtemplate" + File.separator;
		path = path.replace("\\", "/");
		System.out.println(path);
		return path;
	}

	private static String getFileName(String path) {
		path = path.replace("\\", "/");
		System.out.println(path);
		return path.substring(path.lastIndexOf("/") + 1);
	}

	public static String getAppPath(Class<?> cls) {
		if (cls == null)
			throw new java.lang.IllegalArgumentException("参数不能为空！");
		ClassLoader loader = cls.getClassLoader();
		String clsName = cls.getName() + ".class";
		Package pack = cls.getPackage();
		String path = "";
		if (pack != null) {
			String packName = pack.getName();
			if (packName.startsWith("java.") || packName.startsWith("javax."))
				throw new java.lang.IllegalArgumentException("不要传送系统类！");
			clsName = clsName.substring(packName.length() + 1);
			if (packName.indexOf(".") < 0)
				path = packName + "/";
			else {
				int start = 0, end = 0;
				end = packName.indexOf(".");
				while (end != -1) {
					path = path + packName.substring(start, end) + "/";
					start = end + 1;
					end = packName.indexOf(".", start);
				}
				path = path + packName.substring(start) + "/";
			}
		}
		java.net.URL url = loader.getResource(path + clsName);
		String realPath = url.getPath();
		int pos = realPath.indexOf("file:");
		if (pos > -1)
			realPath = realPath.substring(pos + 5);
		pos = realPath.indexOf(path + clsName);
		realPath = realPath.substring(0, pos - 1);
		if (realPath.endsWith("!"))
			realPath = realPath.substring(0, realPath.lastIndexOf("/"));
		try {
			realPath = java.net.URLDecoder.decode(realPath, "utf-8");
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		System.out.println("realPath----->" + realPath);
		return realPath;
	}

	public static void main(String[] args) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("subject", "测试标题");
		map.put("content", "测试 内容");
		sendCommonMail("184227881@qq.com", "弈辰棋社密码找回邮件，您找回密码的验证码为", "345678");
	}

}