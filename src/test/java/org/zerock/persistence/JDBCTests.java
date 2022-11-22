package org.zerock.persistence;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

import static org.junit.Assert.fail;


@Log4j
public class JDBCTests {

	// lombok 사용안하고 log작업을 할 경우
	// private static final Logger logger = LoggerFactory.getLogger(JDBCTests.class);

	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void testConnection() {
		
		try(Connection con = 
				DriverManager.getConnection(
                // Oracle19 버전인 경우 => "jdbc:oracle:thin:@localhost:1521:orcl"
                // Oracle11 버전인 경우 => "jdbc:oracle:thin:@localhost:1521:XE"
					"jdbc:oracle:thin:@hotelht_high?TNS_ADMIN=/Users/mihyun/Downloads/Wallet_HotelHT",
					"ADMIN",
					"Ghxpfghkdlxld1!")){
			System.out.println(con);
		} catch (Exception e) {
			fail(e.getMessage());
		}
		
	}
	
}
