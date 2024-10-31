<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.wanada.model.CpuDTO"%>

<html>
<head>
    <title>CPU Products</title>
</head>
<body>
    <h1>CPU Product List</h1>
    <%
        List<CpuDTO> cpuProducts = (List<CpuDTO>) request.getAttribute("cpuProducts");
        if (cpuProducts != null && !cpuProducts.isEmpty()) {
            for (CpuDTO cpu : cpuProducts) {
    %>
                <div class="cpu-item">
                    <img src="" alt="<%= cpu.getCPU_NAME() %>" width="100" height="100">
                    <h3><%= cpu.getCPU_NAME() %></h3>
                    <p>가격: <%= cpu.getCPU_PRICE() %>원</p>
                </div>
    <%
            }
        } else {
    %>
            <p>등록된 CPU 제품이 없습니다.</p>
    <%
        }
    %>
</body>
</html>
