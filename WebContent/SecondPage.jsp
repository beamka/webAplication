<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>IBTkachova SecondPage</title>
<link rel="stylesheet" href="css/style2.css" media="screen"
	type="text/css" />
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
					<span class="ring"></span> <span class="ring"></span> <span
					class="ring"></span> <span class="ring"></span> <span class="ring"></span>
				<span class="ring"></span> <span class="ring"></span> <span
					class="ring"></span> <span class="ring"></span><span class="ring"></span> 
					<span class="ring"></span> <span class="ring"></span>
				<span class="ring"></span> <span class="ring"></span> <span
					class="ring"></span> <span class="ring"></span> 
			</div>
			<form name="form" action="UsersServlet" class="input-form" method="get" >
			<table>
			<tr>
			<td colspan="2">
					<br>
					<label id="firstName">Ім’я:</label>
					<label id="lastName">Прізвище:</label>
					<label id="birthday">Дата народження:</label>
					<label id="phone">Телефон:</label>
					<label id="email">Електронна пошта:</label>
					<label id="country">Країна:</label>
					<label id="city">Місто:</label>
					<label id="region">Область:</label>
					${result}
				</td>
				</tr>
				<tr>
						<td colspan="2">
							<p style="font-size: 12px; font-family: Florence, cursive;">
								<span style="color: #7B7D87">${reqMessage}</span>
							</p>
						</td>
					</tr>	
				<tr>
				 <td>
					<button type="submit">Завантажити</button>
					</td>
					<td>
					<a href="/IBTSoftGroup/FirstPage.jsp"><button type="button">Повернутися</button></a>
					<td>
				</tr>	
			</table>
			</form>
		</div>
	</div>
</body>
</html>