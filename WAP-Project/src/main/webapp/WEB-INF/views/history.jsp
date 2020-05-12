<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <link rel="stylesheet" type="text/css" href="<%=application.getContextPath() %>/css/all.css" >
    <link rel="stylesheet" type="text/css" href="<%=application.getContextPath() %>/css/sb-admin-2.css" >
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <title>Transaction History</title>
</head>
<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <%@include file="/WEB-INF/fragments/header.jsp"%>

    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Transaction History</h1>

            <form class="form-inline float-right">
                <label class="my-1 mr-2" for="account">Account:</label>
                <select class="custom-select my-1 mr-sm-2" id="account">
                    <option selected>Choose your account</option>
                    <option value="1111111">One</option>
                    <option value="2222222">Two</option>
                    <option value="3333333">Three</option>
                </select>
            </form>
        </div>

        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Target Account</th>
                    <th>Type</th>
                    <th>Amount</th>
                    <th>Create Time</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="j" begin="1" end="10">
                <tr>
                    <td>12345124</td>
                    <td>Pay</td>
                    <td>99.99</td>
                    <td>05/11/2020</td>
                </tr>
            </c:forEach>
            </tbody>
            <tfoot>

            </tfoot>
        </table>


        <nav>
            <ul class="pagination justify-content-center">
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <c:forEach var="j" begin="1" end="${totalPages}">
                <li class="page-item"><a class="page-link" href="#"><c:out value="${j}"/></a></li>
                </c:forEach>
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </nav>


        <!-- Footer -->
        <%@include file="/WEB-INF/fragments/footer.jsp"%>
        <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<%@include file="/WEB-INF/fragments/jsSetUp.jsp"%>
<script>

</script>
</body>
</html>