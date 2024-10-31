package com.wanada.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import com.wanada.util.DBConnPool;

public class ProductDAO {

	private static ProductDAO instance = new ProductDAO();

	public static ProductDAO getInstance() {
		return instance;
	}

	public List<ProductDTO> getAllProducts() {
		List<ProductDTO> allProducts = new ArrayList<>();
		System.out.print("3-");
		String[] sqlQueries = { "SELECT CPU_IMAGE AS image, CPU_NAME AS title, CPU_PRICE AS price FROM COMPUTER_CPU",
				"SELECT GPU_IMAGE AS image, GPU_NAME AS title, GPU_PRICE AS price FROM COMPUTER_GPU",
				"SELECT HDD_IMAGE AS image, HDD_NAME AS title, HDD_PRICE AS price FROM COMPUTER_HDD",
				"SELECT SSD_IMAGE AS image, SSD_NAME AS title, SSD_PRICE AS price FROM COMPUTER_SSD",
				"SELECT COOLER_IMAGE AS image, COOLER_NAME AS title, COOLER_PRICE AS price FROM COMPUTER_COOLER",
				"SELECT CASE_IMAGE AS image, CASE_NAME AS title, CASE_PRICE AS price FROM COMPUTER_CASE",
				"SELECT MB_IMAGE AS image, MB_NAME AS title, MB_PRICE AS price FROM COMPUTER_MAINBOARD",
				"SELECT POWER_IMAGE AS image, POWER_NAME AS title, POWER_PRICE AS price FROM COMPUTER_POWER",
				"SELECT RAM_IMAGE AS image, RAM_NAME AS title, RAM_PRICE AS price FROM COMPUTER_RAM" };

		try (Connection conn = DBConnPool.getConnection()) {
			for (String sql : sqlQueries) {
				// System.out.println("Executing query: " + sql); // 쿼리 출력
				try (PreparedStatement pstmt = conn.prepareStatement(sql); ResultSet rs = pstmt.executeQuery()) {
					if (!rs.isBeforeFirst()) {
						System.out.println("No data found for query: " + sql); // 데이터가 없는 경우
					}
					while (rs.next()) {
						ProductDTO product = new ProductDTO();
						product.setImage(rs.getString("image"));
						product.setTitle(rs.getString("title"));
						product.setPrice(rs.getString("price"));
						allProducts.add(product);
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.print("34-");
		return allProducts;
	}

	public List<CpuDTO> getComputerCpuProducts() {
		List<CpuDTO> cpuProducts = new ArrayList<>();
		String sql = "SELECT CPU_IMAGE AS image, CPU_NAME AS name, CPU_PRICE AS price FROM COMPUTER_CPU";

		try (Connection conn = DBConnPool.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery()) {

			while (rs.next()) {
				CpuDTO cpu = new CpuDTO();
				cpu.setCPU_IMAGE(rs.getString("image"));
				cpu.setCPU_NAME(rs.getString("NAME"));
				cpu.setCPU_PRICE(rs.getString("price"));
				cpuProducts.add(cpu);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cpuProducts;
	}

	public List<ProductDTO> getFilteredProducts(String[] COMPUTER_CPU, String[] COMPUTER_COOLER, String[] COMPUTER_GPU,
			String[] COMPUTER_HDD, String[] COMPUTER_MAINBOARD, String[] COMPUTER_POWER, String[] COMPUTER_REM,
			String[] COMPUTER_SSD) {
		List<ProductDTO> filteredProducts = new ArrayList<>();

		StringBuilder sql = new StringBuilder(
				"SELECT CPU_IMAGE AS image, CPU_NAME AS title, CPU_PRICE AS price FROM COMPUTER_CPU WHERE 1=1");
		StringBuilder sql2 = new StringBuilder(
				"SELECT GPU_IMAGE AS image, GPU_NAME AS title, GPU_PRICE AS price FROM COMPUTER_GPU WHERE 1=1");

		// 헬퍼 메서드를 사용하여 필터 조건 추가
		if (COMPUTER_CPU != null && COMPUTER_CPU.length > 0) {
			addFilterCondition(sql, "MAKER_CPU", COMPUTER_CPU);
			if (COMPUTER_CPU[0].equalsIgnoreCase("Intel")) {
				addFilterCondition(sql, "Intel_Cpu", COMPUTER_CPU);
			} else {
				addFilterCondition(sql, "Ryzen_Cpu", COMPUTER_CPU);
			}
		} else {
			addFilterCondition(sql2, "MAKER_GPU", COMPUTER_GPU);
			addFilterCondition(sql2, "CHIPSET_GPU", COMPUTER_GPU);
			addFilterCondition(sql2, "TYPE_GPU", COMPUTER_GPU);

		}

		System.out.println("Final SQL Query: " + sql2.toString());

		try {
			Connection conn = DBConnPool.getConnection();
			if (true) {

			}
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				ProductDTO product = new ProductDTO();
				product.setImage(rs.getString("IMAGE"));
				product.setTitle(rs.getString("TITLE"));
				product.setPrice(rs.getString("PRICE"));
				filteredProducts.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return filteredProducts;
	}

	// 필터 조건을 추가하는 헬퍼 메서드
	private void addFilterCondition(StringBuilder sql, String columnName, String[] values) {
		if (values != null && values.length > 0) {
			String conditions = Arrays.stream(values).map(value -> columnName + " LIKE '%" + value + "%'")
					.collect(Collectors.joining(" OR "));
			sql.append(" AND (").append(conditions).append(")");
		}
	}
}
