<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function delete_ok(id){
		if(confirm("정말로 삭제하시겠어요? ")){
			location.href='deleteemp/'  + id;
		}
	}
</script>
</head>
<body>
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
<h1>Book List</h1>  
<table border="2" width="70%" cellpadding="2">  
<tr><th>Title</th><th>rate</th><th>Author</th><th>Edit</th><th>Delete</th></tr>  
   <c:forEach var="emp" items="${list}">   
   <tr>  
   <td>${emp.name}</td>  
   <td>${emp.salary}</td>  
   <td>${emp.designation}</td>  
   <td><a href="editemp/${emp.id}">Edit</a></td>  
   <td><a href='#' onclick="javascript:delete_ok('${emp.id}')">Delete</a></td>
     
   </tr>  
   </c:forEach>  
   </table>  
   <br/>  
   <a href="empform">Add  Book</a> 
</body>
</html>