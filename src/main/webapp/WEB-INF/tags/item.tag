<%@ tag body-content="scriptless" pageEncoding="UTF-8"%>

<%@ attribute name="bgcolor" %>
<%@ attribute name="border" %>

<jsp:useBean id="product" class="ch06.Product"/>

<H2><jsp:doBody/></H2>
<table border="${border}" bgcolor="${bgcolor}" width="150"> <!-- ListItem.jsp에서 태그를 사용할 때 넘겨준 border값과 bgcolor로 해당 속성을 초기화 -->
	<%
		for(String item : product.getProductList()) {
			out.println("<tr><td>"+item+"</td></tr>"); //String배열인 product의 요소를 추출하여 <tr><td>속성을 추가하여 출력 
		}
	%>
</table>