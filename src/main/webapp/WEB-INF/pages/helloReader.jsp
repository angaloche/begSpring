<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
<html>
<head>
    <title>Spring MVC Form Validation</title>
    <style type="text/css">
        .formFieldError {
            background-color: #FFC;
        } </style>
</head>
<body>
${message}
<mvc:form modelAttribute="user" action="result.mvc">
    <p><mvc:errors path="*" Class="formFieldError"/></p>

    <table>
        <tr>
            <td><mvc:label path="name">Name</mvc:label></td>
            <td><mvc:input path="name"/></td>

        </tr>
        <tr>
            <td><mvc:label path="lastname">Last Name</mvc:label></td>
            <td><mvc:input path="lastname"/></td>

        </tr>
        <tr>
            <td><mvc:label path="birthDate">BirthDate</mvc:label></td>
            <td><mvc:input path="birthDate"/></td>

        </tr>
        <tr>
            <td><mvc:label path="country">Country</mvc:label></td>
            <td><mvc:select path="country" items="${countries}"/>

            </td>
        </tr>
        <tr>
            <td><mvc:radiobutton path="gender" label="Female" value="F"/></td>
            <td><mvc:radiobutton path="gender" label="Male" value="M"/></td>
        </tr>
        <tr>
            <td><mvc:checkbox path="nonSmoking" label="non smoking"/></td>
        </tr>
        <tr>
            <td colspan="1"/>
            <td colspan="1">
                <mvc:button>Submit</mvc:button>
            </td>
        </tr>
    </table>
</mvc:form>
</body>
</html>