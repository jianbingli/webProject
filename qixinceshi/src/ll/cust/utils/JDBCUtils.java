package ll.cust.utils;

import java.sql.Connection;

import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;

/**
 * 
 * 工具类 可以不依赖具体的数据库的jar 进一步优化 工具类 配置文件 txt xml properties key=value src 下添加配置文件
 * jdbc.properties Properties p = new Properties(); p.load(inputstream)
 * 
 * 一行代码读取properties 配置文件信息 ResourceBundle 快速读取 properties 文件信息
 */
public class JDBCUtils {
	// 创建连接池对象 成员变量 连接池对象创建 必须唯一 连接池默认构造 加载c3p0-config.xml default-config 内容
	public static ComboPooledDataSource dataSource = new ComboPooledDataSource();

	// 获取连接池对象
	public static DataSource getDataSource() {
		return dataSource;
	}

	// 获取连接 Connection
	public static Connection getConnection() {
		try {
			// 连接池中获取
			return dataSource.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("获取连接失败");
		}
	}

	// 关闭资源 connection

	/**
	 * DriverManager.getConnection() close() 关闭连接
	 * 
	 * 连接池中关闭方法 不是关闭资源 当前连接 放回到 连接池对象
	 */

	// public static void main(String[] args) {
	// System.out.println(getConnection());
	// }

}
