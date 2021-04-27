<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<!-- USER -->
<c:if test="${sessioScope.Role==null && sessionScope.uid==null}">
						
 <p>© LOGOUT AND AGAIN LOGIN</p>
</c:if>

<!-- ADMIN -->
<c:if test="${sessionScope.uid!=null && sessionScope.Role==1}">
<!-- Admin is logged in : Admin Menu -->
					  <p>© Admin <!-- | Design by
            <a href="http://w3layouts.com"> W3layouts.</a> -->
        </p>
					 </c:if>

<!-- EMPLOYEE -->
 <c:if test="${sessionScope.uid!=null && sessionScope.Role==2 }">
<!-- Employee is logged in : Employee Menu -->
					
					
					</c:if>

<!-- OWNER -->
<c:if test="${sessionScope.uid!=null && sessionScope.Role==3}">
<!-- Employee is logged in : Employee Menu -->
						
</c:if>

<!-- GOVT -->
<c:if test="${sessionScope.uid!=null && sessionScope.Role==4}">
<!-- GOVT is logged in : Employee Menu -->
						<li><a href="Admin2.jsp">Home</a></li>
						<li><a href="StatementAdmin.jsp">STATEMENTS</a></li>
						<li><a href="TransactionAdmin.jsp">Tax Payments</a></li>
						<li><a href="Viewpf.jsp">PF Requests</a></li>
						<li><a href="Logout.jsp">Logout</a></li>
</c:if>
