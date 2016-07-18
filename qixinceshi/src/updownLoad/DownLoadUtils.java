package updownLoad;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import sun.misc.BASE64Encoder;

public class DownLoadUtils {

	public static String getFileName(String filename, String agent) {
		try {
			if (agent.contains("Firefox")) {
				// 火狐浏览器
				// 解决火狐
				BASE64Encoder encoder = new BASE64Encoder();
				filename = encoder.encode(filename.getBytes("utf-8"));// 不可以的
				// 火狐
				// base64
				// 编码之后
				// 添加一个头说明
				// 和 尾说明
				// 追加头和尾
				filename = "=?utf-8?B?" + filename + "?=";
				// 告知火狐浏览器 头和 尾巴
				// filename = MimeUtility.encodeText(filename, "utf-8", "B");//
				// 解决不了 空格
			} else {
				// IE Chrome....
				// 解决 IE 附件名乱码 服务器编码和浏览器自带解码不相同
				filename = URLEncoder.encode(filename, "utf-8");
				filename = filename.replace("+", " ");
			}
			return filename;
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			throw new RuntimeException("附件名解析错误");
		}

	}

}
