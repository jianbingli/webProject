package updownLoad;

import java.util.UUID;

public class UploadUtils {

	public static String getFileName(String filename) {
		// E:\Users\Servlet.java
		if (filename.lastIndexOf("\\") != -1) {
			// ie
			filename = filename.substring(filename.lastIndexOf("\\") + 1);
		}
		// firefox
		return filename;
	}

	public static String getUUIDFileName(String filename) {
		// 1: 获取该文件 扩展名
		String ext = filename.substring(filename.lastIndexOf("."));
		String uuidFilename = UUID.randomUUID().toString().replace("-", "");
		return uuidFilename + ext;
	}

	public static void main(String[] args) {
		System.out.println(getUUIDFileName("E:\\user\\admin\\Servlet.java"));
	}
}
