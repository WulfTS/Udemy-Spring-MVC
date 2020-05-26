<%--
  Created by IntelliJ IDEA.
  User: Wulf
  Date: 3/26/2020
  Time: 3:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE>
<html>
<head>
    <title>Student Registration Form</title>
</head>
<body>
    <form:form action="processForm" modelAttribute="student">

        First Name: <form:input path="firstName" />

        <br><br>

        Last Name: <form:input path="lastName" />

        <br><br>

        Country: <form:select path="country">
        
        <form:options items="${student.countryOptions}" />


        </form:select>
        <br><br>

        Favorite Language: <form:radiobuttons path="favoriteLanguage" items="${student.favoriteLanguageOptions}"  />

        <br><br>

        Operating Systems:

        Linux <form:checkbox path="operatingSystems" value="Linux" />
        Mac OS <form:checkbox path="operatingSystems" value="Mac OS" />
        MS Windows <form:checkbox path="operatingSystems" value="MS Windows" />

        <br><br>


        <input type="submit" value="Submit" />

    </form:form>
</body>
</html>
