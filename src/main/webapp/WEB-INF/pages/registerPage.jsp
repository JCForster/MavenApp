<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="register" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE HTML>
<html>
<head>
    <title>Sample Form</title>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <style>
        body { background-color: #eee; font: helvetica; }
        #container { width: 500px; background-color: #fff; margin: 30px auto; padding: 30px; border-radius: 5px; box-shadow: 5px; }
        .green { font-weight: bold; color: green; }
        .message { margin-bottom: 10px; }
        label {width:70px; display:inline-block;}
        form {line-height: 160%; }
        .hide { display: none; }
    </style>
</head>
<body>

<div id="container">

    <h2>Registration</h2>
    <c:if test="${not empty message}"><div class="message green">${message}</div></c:if>

    <register:form modelAttribute="subscriber">
        <label for="userNameInput">Name: </label>
        <register:input path="userName" id="userNameInput" />
        <br/>

        <label for="emailInput">Email: </label>
        <register:input path="email" id="emailInput" />
        <br/>

        <label for="genderOptions">Gender: </label>
        <register:select path="gender" id="genderOptions">
            <register:option value="">Select Gender</register:option>
            <register:option value="MALE">Male</register:option>
            <register:option value="FEMALE">Female</register:option>
            <register:option value="NONE_GIVEN">Rather not say</register:option>
        </register:select>
        <br/>

        <label for="passwordInput">Password: </label>
        <register:input path="password" id="passwordInput" />
        <br/>

        <label for="newsletterCheckbox">Mail List </label>
        <register:checkbox path="receiveNewsletter" id="newsletterCheckbox" />

        <br/>
        <input type="submit" value="Submit" />
    </register:form>
</div>


<script type="text/javascript">

    $(document).ready(function() {

        toggleFrequencySelectBox(); // show/hide box on page load

        $('#newsletterCheckbox').change(function() {
            toggleFrequencySelectBox();
        })

    });

    function toggleFrequencySelectBox() {
        if(!$('#newsletterCheckbox').is(':checked')) {
            $('#frequencySelect').val('');
            $('#frequencySelect').prop('disabled', true);
        } else {
            $('#frequencySelect').prop('disabled', false);
        }
    }

</script>

</body>
</html>