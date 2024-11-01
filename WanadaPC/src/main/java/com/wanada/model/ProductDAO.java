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
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	
	
	public List<CpuDTO> getComputerCpuProducts() {
	      List<CpuDTO> list = new ArrayList<>();
	      String sql = "SELECT CPU_NAME,CPU_IMAGE, CPU_IMFORMATION , CPU_PRICE  FROM COMPUTER_CPU";

	      try {
	         conn = DBConnPool.getConnection();
	         pstmt = conn.prepareStatement(sql);
	         rs = pstmt.executeQuery();

	         while (rs.next()) {
	            CpuDTO dto = new CpuDTO();
	            dto.setCPU_NAME(rs.getString("CPU_NAME"));
	            dto.setCPU_IMAGE(rs.getString("CPU_IMAGE"));
	            dto.setCPU_INFORMATION(rs.getString("CPU_IMFORMATION"));
	            dto.setCPU_PRICE(rs.getString("CPU_PRICE"));
	            list.add(dto);
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         DBConnPool.close(conn, pstmt, rs);
	      }

	      return list;
	   }
	   
	   public List<CaseDTO> getComputerCaseProducts() {
	      List<CaseDTO> list = new ArrayList<>();
	      String sql = "SELECT CASE_NAME,CASE_IMAGE, CASE_IMFORMATION , CASE_PRICE  FROM COMPUTER_CASE";

	      try {
	         conn = DBConnPool.getConnection();
	         pstmt = conn.prepareStatement(sql);
	         rs = pstmt.executeQuery();

	         while (rs.next()) {
	            CaseDTO dto = new CaseDTO();
	            dto.setCASE_NAME(rs.getString("CASE_NAME"));
	            dto.setCASE_IMAGE(rs.getString("CASE_IMAGE"));
	            dto.setCASE_INFORMATION(rs.getString("CASE_IMFORMATION"));
	            dto.setCASE_PRICE(rs.getString("CASE_PRICE"));
	            list.add(dto);
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         DBConnPool.close(conn, pstmt, rs);
	      }

	      return list;
	   }
	   
	   
	   public List<CoolerDTO> getComputerCoolerProducts() {
	      List<CoolerDTO> list = new ArrayList<>();
	      String sql = "SELECT COOLER_NAME,COOLER_IMAGE, COOLER_IMFORMATION , COOLER_PRICE  FROM COMPUTER_COOLER";

	      try {
	         conn = DBConnPool.getConnection();
	         pstmt = conn.prepareStatement(sql);
	         rs = pstmt.executeQuery();

	         while (rs.next()) {
	            CoolerDTO dto = new CoolerDTO();
	            dto.setCOOLER_NAME(rs.getString("COOLER_NAME"));
	            dto.setCOOLER_IMAGE(rs.getString("COOLER_IMAGE"));
	            dto.setCOOLER_INFORMATION(rs.getString("COOLER_IMFORMATION"));
	            dto.setCOOLER_PRICE(rs.getString("COOLER_PRICE"));
	            list.add(dto);
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         DBConnPool.close(conn, pstmt, rs);
	      }
	      return list;
	   }
	   
	   
	   public List<GpuDTO> getComputerGpuProducts() {
	      List<GpuDTO> list = new ArrayList<>();
	      String sql = "SELECT GPU_NAME,GPU_IMAGE, GPU_IMFORMATION , GPU_PRICE  FROM COMPUTER_GPU";

	      try {
	         conn = DBConnPool.getConnection();
	         pstmt = conn.prepareStatement(sql);
	         rs = pstmt.executeQuery();

	         while (rs.next()) {
	            GpuDTO dto = new GpuDTO();
	            dto.setGPU_NAME(rs.getString("GPU_NAME"));
	            dto.setGPU_IMAGE(rs.getString("GPU_IMAGE"));
	            dto.setGPU_INFORMATION(rs.getString("GPU_IMFORMATION"));
	            dto.setGPU_PRICE(rs.getString("GPU_PRICE"));
	            list.add(dto);
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         DBConnPool.close(conn, pstmt, rs);
	      }
	      return list;
	   }
	   
	   public List<HddDTO> getComputerHddProducts() {
	      List<HddDTO> list = new ArrayList<>();
	      String sql = "SELECT HDD_NAME,HDD_IMAGE, HDD_IMFORMATION , HDD_PRICE  FROM COMPUTER_HDD";

	      try {
	         conn = DBConnPool.getConnection();
	         pstmt = conn.prepareStatement(sql);
	         rs = pstmt.executeQuery();

	         while (rs.next()) {
	            HddDTO dto = new HddDTO();
	            dto.setHDD_NAME(rs.getString("HDD_NAME"));
	            dto.setHDD_IMAGE(rs.getString("HDD_IMAGE"));
	            dto.setHDD_INFORMATION("HDD_INFORMATION");
	            dto.setHDD_PRICE(rs.getString("HDD_PRICE"));
	            list.add(dto);
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         DBConnPool.close(conn, pstmt, rs);
	      }
	      return list;
	   }
	   
	   public List<MainBoardDTO> getComputerMBProducts() {
	      List<MainBoardDTO> list = new ArrayList<>();
	      String sql = "SELECT MB_NAME,MB_IMAGE, MB_IMFORMATION , MB_PRICE  FROM COMPUTER_MAINBOARD";

	      try {
	         conn = DBConnPool.getConnection();
	         pstmt = conn.prepareStatement(sql);
	         rs = pstmt.executeQuery();

	         while (rs.next()) {
	            MainBoardDTO dto = new MainBoardDTO();
	            dto.setMB_NAME(rs.getString("MB_NAME"));
	            dto.setMB_IMAGE(rs.getString("MB_IMAGE"));
	            dto.setMB_INFORMATION("MB_INFORMATION");
	            dto.setMB_PRICE(rs.getString("MB_PRICE"));
	            list.add(dto);
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         DBConnPool.close(conn, pstmt, rs);
	      }
	      return list;
	   }
	   
	   public List<PowerDTO> getComputerPOWERProducts() {
	      List<PowerDTO> list = new ArrayList<>();
	      String sql = "SELECT POWER_NAME,POWER_IMAGE, POWER_IMFORMATION , POWER_PRICE  FROM COMPUTER_POWER";

	      try {
	         conn = DBConnPool.getConnection();
	         pstmt = conn.prepareStatement(sql);
	         rs = pstmt.executeQuery();

	         while (rs.next()) {
	            PowerDTO dto = new PowerDTO();
	   
	            dto.setPOWER_NAME(rs.getString("POWER_NAME"));
	            dto.setPOWER_IMAGE(rs.getString("POWER_IMAGE"));
	            dto.setPOWER_INFORMATION("POWER_INFORMATION");
	            dto.setPOWER_PRICE(rs.getString("POWER_PRICE"));
	            list.add(dto);
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         DBConnPool.close(conn, pstmt, rs);
	      }
	      return list;
	   }
	   
	   public List<RamDTO> getComputerRamProducts() {
	      List<RamDTO> list = new ArrayList<>();
	      String sql = "SELECT RAM_NAME,RAM_IMAGE, RAM_IMFORMATION , RAM_PRICE  FROM COMPUTER_RAM";

	      try {
	         conn = DBConnPool.getConnection();
	         pstmt = conn.prepareStatement(sql);
	         rs = pstmt.executeQuery();

	         while (rs.next()) {
	            RamDTO dto = new RamDTO();
	   
	            dto.setRAM_NAME(rs.getString("RAM_NAME"));
	            dto.setRAM_IMAGE(rs.getString("RAM_IMAGE"));
	            dto.setRAM_INFORMATION("RAM_INFORMATION");
	            dto.setRAM_PRICE(rs.getString("RAM_PRICE"));
	            list.add(dto);
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         DBConnPool.close(conn, pstmt, rs);
	      }
	      return list;
	   }
	   public List<SsdDTO> getComputerSsdProducts() {
	      List<SsdDTO> list = new ArrayList<>();
	      String sql = "SELECT SSD_NAME,SSD_IMAGE, SSD_IMFORMATION , SSD_PRICE  FROM COMPUTER_SSD";

	      try {
	         conn = DBConnPool.getConnection();
	         pstmt = conn.prepareStatement(sql);
	         rs = pstmt.executeQuery();

	         while (rs.next()) {
	            SsdDTO dto = new SsdDTO();
	   
	            dto.setSSD_NAME(rs.getString("SSD_NAME"));
	            dto.setSSD_IMAGE(rs.getString("SSD_IMAGE"));
	            dto.setSSD_INFORMATION("SSD_INFORMATION");
	            dto.setSSD_PRICE(rs.getString("SSD_PRICE"));
	            list.add(dto);
	         }
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         DBConnPool.close(conn, pstmt, rs);
	      }
	      return list;
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


	public List<ProductDTO> getFilteredProducts(String[] COMPUTER_CPU, String[] COMPUTER_COOLER, String[] COMPUTER_GPU,
			String[] COMPUTER_HDD, String[] COMPUTER_MAINBOARD, String[] COMPUTER_POWER, String[] COMPUTER_REM,
			String[] COMPUTER_SSD) {
		List<ProductDTO> filteredProducts = new ArrayList<>();

		
		
		 StringBuilder[] sqlQueries = new StringBuilder[] {
	             new StringBuilder("SELECT CPU_IMAGE AS image, CPU_NAME AS title, CPU_PRICE AS price FROM COMPUTER_CPU WHERE 1=1"), // CPU
	             new StringBuilder("SELECT GPU_IMAGE AS image, GPU_NAME AS title, GPU_PRICE AS price FROM COMPUTER_GPU WHERE 1=1"), // GPU
	             new StringBuilder("SELECT COOLER_IMAGE AS image, COOLER_NAME AS title, COOLER_PRICE AS price FROM COMPUTER_COOLER WHERE 1=1"), // COOLER
	             new StringBuilder("SELECT HDD_IMAGE AS image, HDD_NAME AS title, HDD_PRICE AS price FROM COMPUTER_HDD WHERE 1=1"),
	             new StringBuilder("SELECT RAM_IMAGE AS image, RAM_NAME AS title, RAM_PRICE AS price FROM COMPUTER_RAM WHERE 1=1"),
	             new StringBuilder("SELECT POWER_IMAGE AS image, POWER_NAME AS title, POWER_PRICE AS price FROM COMPUTER_POWER WHERE 1=1"),
	             new StringBuilder("SELECT MB_IMAGE AS image, MB_NAME AS title, MB_PRICE AS price FROM COMPUTER_MAINBOARD WHERE 1=1"),
	             new StringBuilder("SELECT SSD_IMAGE AS image, SSD_NAME AS title, SSD_PRICE AS price FROM COMPUTER_SSD WHERE 1=1") 
		 };
		   
		 StringBuilder sql1 = sqlQueries[0]; // CPU 쿼리
	     StringBuilder sql2 = sqlQueries[1]; // GPU 쿼리
	      StringBuilder sql3 = sqlQueries[2]; // COOLER 쿼리
	      StringBuilder sql4 = sqlQueries[3]; // COOLER 쿼리
	      StringBuilder sql5 = sqlQueries[4]; // COOLER 쿼리
	      StringBuilder sql6 = sqlQueries[5]; // COOLER 쿼리
	      StringBuilder sql7 = sqlQueries[6]; // COOLER 쿼리
	      StringBuilder sql8 = sqlQueries[7]; // COOLER 쿼리

		
		// 헬퍼 메서드를 사용하여 필터 조건 추가
		if (COMPUTER_CPU != null && COMPUTER_CPU.length > 0) {
			addFilterCondition(sql1, "MAKER_CPU", COMPUTER_CPU);
			if (COMPUTER_CPU[0].equalsIgnoreCase("Intel")) {
				addFilterCondition(sql1, "Intel_Cpu", COMPUTER_CPU);
			} else {
				addFilterCondition(sql1, "Ryzen_Cpu", COMPUTER_CPU);
			}
		} else if(COMPUTER_GPU != null && COMPUTER_GPU.length > 0) {
			addFilterCondition(sql2, "MAKER_GPU", COMPUTER_GPU);
			addFilterCondition(sql2, "CHIPSET_GPU", COMPUTER_GPU);
			addFilterCondition(sql2, "TYPE_GPU", COMPUTER_GPU);
		}else if(COMPUTER_COOLER != null && COMPUTER_COOLER.length > 0) {
			addFilterCondition(sql3, "MAKER_COOLER", COMPUTER_COOLER);
			addFilterCondition(sql3, "PRODUCT_TYPE", COMPUTER_COOLER);
			addFilterCondition(sql3, "COOLER_method", COMPUTER_COOLER);
		}else if(COMPUTER_HDD != null && COMPUTER_HDD.length > 0) {
			addFilterCondition(sql4, "MAKER_HDD", COMPUTER_HDD);
			addFilterCondition(sql4, "SIZE_HDD", COMPUTER_HDD);
			addFilterCondition(sql4, "CAPACITY_HDD", COMPUTER_HDD);
			
		}else if(COMPUTER_REM != null && COMPUTER_REM.length > 0) {
			addFilterCondition(sql5, "MAKER_REM", COMPUTER_REM);
			addFilterCondition(sql5, "TYPE_REM", COMPUTER_REM);
			addFilterCondition(sql5, "CAPACITY_REM", COMPUTER_REM);
		}else if(COMPUTER_POWER != null && COMPUTER_POWER.length > 0) {
			addFilterCondition(sql6, "MAKER_POWER", COMPUTER_POWER);
			addFilterCondition(sql6, "OUTPUT_POWER", COMPUTER_POWER);
			addFilterCondition(sql6, "CERTIFICATION_POWER", COMPUTER_POWER);
		}else if(COMPUTER_MAINBOARD != null && COMPUTER_MAINBOARD.length > 0) {
			addFilterCondition(sql7, "MAKER_MainBoard", COMPUTER_MAINBOARD);
			addFilterCondition(sql7, "TYPE_MainBoard", COMPUTER_MAINBOARD);
			addFilterCondition(sql7, "SOCKET_MainBoard", COMPUTER_MAINBOARD);
		}else if(COMPUTER_SSD != null && COMPUTER_SSD.length > 0) {
			addFilterCondition(sql8, "MAKER_SSD", COMPUTER_SSD);
			addFilterCondition(sql8, "FORM_FACTOR_SSD", COMPUTER_SSD);
			addFilterCondition(sql8, "CAPACITY_SSD", COMPUTER_SSD);
		}
		
		

		//System.out.println("Final SQL Query: " + sql2.toString());

		  try {
		         Connection conn = DBConnPool.getConnection();
		         PreparedStatement pstmt=null;
		         if (COMPUTER_CPU != null && COMPUTER_CPU.length > 0) {
		            pstmt = conn.prepareStatement(sql1.toString());
		         }else if(COMPUTER_GPU != null && COMPUTER_GPU.length > 0){
		            pstmt = conn.prepareStatement(sql2.toString());
		         }else if(COMPUTER_COOLER != null && COMPUTER_COOLER.length > 0) {
		            pstmt = conn.prepareStatement(sql3.toString());
		         }else if(COMPUTER_HDD != null && COMPUTER_HDD.length > 0) {
		            pstmt = conn.prepareStatement(sql4.toString());
		         }else if(COMPUTER_SSD != null && COMPUTER_SSD.length > 0) {
		            pstmt = conn.prepareStatement(sql8.toString());
		         }else if(COMPUTER_MAINBOARD != null && COMPUTER_MAINBOARD.length > 0) {
			            pstmt = conn.prepareStatement(sql7.toString());
		         }else if(COMPUTER_POWER != null && COMPUTER_POWER.length > 0) {
			            pstmt = conn.prepareStatement(sql6.toString());
		         }else if(COMPUTER_REM != null && COMPUTER_REM.length > 0) {
			            pstmt = conn.prepareStatement(sql5.toString());
		         }
		         
		         ResultSet rs = pstmt.executeQuery();

		         while (rs != null && rs.next()) {
		            ProductDTO product = new ProductDTO();
		            product.setImage(rs.getString("IMAGE"));
		            product.setTitle(rs.getString("TITLE"));
		            product.setPrice(rs.getString("PRICE"));
		            filteredProducts.add(product);
		         }
		      } catch (Exception e) {
		         e.printStackTrace();
		      } finally {
		         if(rs==null) {
		            DBConnPool.close(conn, pstmt);
		         }else {
		            DBConnPool.close(conn, pstmt, rs);
		         }
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
