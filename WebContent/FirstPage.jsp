<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>IBTkachova FirstPage</title>
<link rel="stylesheet" href="css/style.css" media="screen"
	type="text/css" />

<script type="text/javascript">
	function validate() {
		var xfirstName = document.forms["form"]["firstName"].value;
		var xlastName = document.forms["form"]["lastName"].value;
		var xbirthday = document.forms["form"]["birthday"].value;
		var xphone = document.forms["form"]["phone"].value;
		var xemail = document.forms["form"]["email"].value;
		var xcountry = document.forms["form"]["country"].value;
		var xcity = document.forms["form"]["city"].value;
		var xregion = document.forms["form"]["region"].value;

		if (xfirstName.length == 0 || xlastName.length == 0
				|| xbirthday.length == 0 || xphone.length == 0
				|| xemail.length == 0 || xcountry.length == 0
				|| xcity.length == 0 || xregion.length == 0) {

			document.getElementById("message").innerHTML = "*всі поля повинні бути заповнені!";

			if (xfirstName.length == 0) {
				document.getElementById("firstNameS").innerHTML = "*";
			} else {
				document.getElementById("firstNameS").innerHTML = "";
			}

			if (xlastName.length == 0) {
				document.getElementById("lastNameS").innerHTML = "*";
			} else {
				document.getElementById("lastNameS").innerHTML = "";
			}

			if (xbirthday.length == 0) {
				document.getElementById("birthdayS").innerHTML = "*";
			} else {
				document.getElementById("birthdayS").innerHTML = "";
			}

			if (xphone.length == 0) {
				document.getElementById("phoneS").innerHTML = "*";
			} else {
				document.getElementById("phoneS").innerHTML = "";
			}

			if (xemail.length == 0) {
				document.getElementById("emailS").innerHTML = "*";
			} else {
				document.getElementById("emailS").innerHTML = "";
			}

			if (xcountry.length == 0) {
				document.getElementById("countryS").innerHTML = "*";
			} else {
				document.getElementById("countryS").innerHTML = "";
			}

			if (xcity.length == 0) {
				document.getElementById("cityS").innerHTML = "*";
			} else {
				document.getElementById("cityS").innerHTML = "";
			}

			if (xregion.length == 0) {
				document.getElementById("regionS").innerHTML = "*";
			} else {
				document.getElementById("regionS").innerHTML = "";
			}

			return false;
		} else {

			var re = /^[\d\(\)\ -]{4,14}\d$/;
			var valid = re.test(xphone);

			if (!valid) {
				document.getElementById("message").innerHTML = "* номер телефона вказаний невірно";
				return false;
			}

			at = xemail.indexOf("@");
			dot = xemail.indexOf(".");
			if (at < 1 || dot < 1) {
				document.getElementById("message").innerHTML = "* eлектронна пошта вказана не вірно";
				return false;
			}
		}
	}
</script>
</head>
<body>
	<div class="content">
		<div class="form-wrapper">
			<div class="linker">
				<span class="ring"></span> <span class="ring"></span> <span
					class="ring"></span> <span class="ring"></span> <span class="ring"></span>
				<span class="ring"></span> <span class="ring"></span> <span
					class="ring"></span> <span class="ring"></span> <span class="ring"></span>
				<span class="ring"></span>
			</div>
			<form name="form" onsubmit="return validate();" action="FirstServlet" class="input-form" method="post">
				<table>
					<tr>
						<td>
						<label for="firstName">Ім’я:</label> 
						<label for="lastName">Прізвище:</label> 
						<label for="birthday">Дата народження:</label> 
						<label for="phone">Телефон:</label> 
						<label for="email">Електронна пошта:</label> 
						<label for="country">Країна:</label>
						<label for="city">Місто:</label> 
						<label for="region">Область:</label>

						</td>
						<td>
						<label style="color: red" id="firstNameS"></label> 
						<label style="color: red" id="lastNameS"></label> 
						<label style="color: red" id="birthdayS"></label> 
						<label style="color: red" id="phoneS"></label> 
						<label style="color: red" id="emailS"></label> 
						<label style="color: red" id="countryS"></label>
						<label style="color: red" id="cityS"></label> 
						<label style="color: red" id="regionS"></label>
						</td>

						<td>
						<input type="text" name="firstName" /> 
						<input type="text" name="lastName" /> 
						<input type="date" name="birthday" placeholder="ДД.ММ.РРРР" /> 
						<input type="text" name="phone" placeholder="наприклад: (077)777-77-77" /> 
						<input type="text" name="email" placeholder="наприклад: ххх@gmail.com" />
						<!--  <input type="text" name="country" /> 
						<input type="text" name="city" /> 
						<input type="text" name="region" /> -->

<form name="formsel">
<select  class="sel"  name="country" required  style="border: 1px solid rgb(197, 200, 204); background-color: rgb(228, 230, 233);height: 40px; width: 296px; color: rgb(140, 140, 140); font-size: 14px">
<option></option>
${selectCountry}
<option >Option</option>
<option >Textarea</option>
<option >Label</option>
<option >Fieldset</option>
<option >Legend</option>
</select>

<select  class="sel"  name="city" required  style="border: 1px solid rgb(197, 200, 204); background-color: rgb(228, 230, 233);height: 40px; width: 296px; color: rgb(140, 140, 140); font-size: 14px">
<option></option>
${selectCity}
</select>

<select onfocus ="this.form.submit();" class="sel"  name="region"  required  style="border-radius: 0 0 5px 5px; border: 1px solid rgb(197, 200, 204); background-color: rgb(228, 230, 233);height: 40px; width: 296px; color: rgb(140, 140, 140); font-size: 14px">
<option></option>
${selectRegion}
</select>

</form>
						
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<p style="font-size: 10px; font-family: Florence, cursive;">
								<span style="color: red" id="message"></span>
							</p>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<button type="submit">Записати</button>
						</td>

						<td>
						    <a href="/IBTSoftGroup/SecondPage.jsp"><button type="button">Переглянути</button></a>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<p style="font-size: 12px; font-family: Florence, cursive;">
								<span style="color: #7B7D87">${reqMessage}</span>
							</p>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>