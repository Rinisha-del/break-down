<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<!-- USER -->
<c:if test="${sessioScope.Role==null && sessionScope.uid==null}">
						<li class="nav-item active  mr-lg-3 mt-lg-0 mt-3">
                            <a class="nav-link" href="Logout.jsp">LOGOUT
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>


</c:if>

<!-- ADMIN -->
<c:if test="${sessionScope.uid!=null && sessionScope.Role==1}">
<!-- Admin is logged in : Admin Menu -->
					    <li class="nav-item active  mr-lg-3 mt-lg-0 mt-3">
                            <a class="nav-link" href="Admin.jsp">Home
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item  mr-lg-3 mt-lg-0 mt-3">
                            <a class="nav-link" href="OperatorList.jsp">OPERATORS LIST</a>
                        </li>
                        <li class="nav-item dropdown mr-lg-3 mt-lg-0 mt-3">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                MODEL TRAINING
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item " href="TrainData_Upload.jsp">TRAIN DATA</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item " href="TrainVideo.jsp">TRAIN VIDEO SOLUTION</a>
                                <!-- <div class="dropdown-divider"></div>
                                <a class="dropdown-item scroll" href="#more">more</a> -->
                            </div>
                        </li>
                        
                        <li class="nav-item mr-lg-3 mt-lg-0 mt-3">
                            <a class="nav-link" href="UpdateNew.jsp">Update New</a>
                        </li>
                        
                        <li class="nav-item mr-lg-3 mt-lg-0 mt-3">
                            <a class="nav-link" href="Logout.jsp">Logout</a>
                        </li>
                        <li>
                            <button type="button" class="btn  ml-lg-2 w3ls-btn" data-toggle="modal" aria-pressed="false" data-target="#exampleModal">
                              >> Admin
                            </button>
                        </li>
</c:if>

<!-- OPERATOR -->
 <c:if test="${sessionScope.uid!=null && sessionScope.Role==2 }">
<!-- Operator is logged in : Operator Menu -->
						
						<li class="nav-item active  mr-lg-3 mt-lg-0 mt-3">
                            <a class="nav-link" href="Admin.jsp">Home
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item  mr-lg-3 mt-lg-0 mt-3">
                            <a class="nav-link" href="FindFailure.jsp">Find Failure</a>
                        </li>
                         <li class="nav-item  mr-lg-3 mt-lg-0 mt-3">
                            <a class="nav-link" href="NewFailureO.jsp">Update New</a>
                        </li>
                        <li class="nav-item mr-lg-3 mt-lg-0 mt-3">
                            <a class="nav-link" href="Logout.jsp">Logout</a>
                        </li>
                        <li>
                            <button type="button" class="btn  ml-lg-2 w3ls-btn" data-toggle="modal" aria-pressed="false" data-target="#exampleModal">
                              >> Operator 
                            </button>
                        </li>
						
						
						
						
</c:if>

<!-- OWNER -->
<c:if test="${sessionScope.uid!=null && sessionScope.Role==3}">
<!-- Employee is logged in : Employee Menu -->
						<li><a href="Owner.jsp">Home</a></li>
						<li><a href="CalculateTax.jsp">Pay Tax</a></li>
						<li><a href="Logout.jsp">Logout</a></li>
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
