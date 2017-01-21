package ua.ibtsoftgroup.impl;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FirstServlet")
public class FirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("Start servlet doGet");

		response.setContentType("text/html;charset=utf-8");
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println(e);
			request.setAttribute("reqMessage",
					"Сталася помилка при запиті до бази даних, перевірте налаштування. Файл скритпу нілаштування бази знаходиться: /IBTSoftGroup/BDMySQL/IBTdb.sql");
			// request.getRequestDispatcher("SecondPage.jsp").forward(request,
			// response);
		}
		ConnectionDB godb = new ConnectionDB();

		String result = "";
		List<Map<String, String>> dataOut = godb.SelectLocation();
		if (!dataOut.isEmpty()) {
			for (Map<String, String> row : dataOut) {
				result = result
						+ "<option >Option</option><option >Textarea</option><option >Label</option><option >Fieldset</option><option >Legend</option>";
			}
		}
		request.setAttribute("selectRegion", result);
		request.getRequestDispatcher("FirstPage.jsp").forward(request, response);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println(e);
		}
		ConnectionDB godb = new ConnectionDB();
		System.out.println(req.getParameter("phone").replaceAll("\\D+", ""));

		Map<String, String> map = new HashMap<String, String>();
		map.put("firstName", req.getParameter("firstName"));
		map.put("lastName", req.getParameter("lastName"));
		map.put("birthday", req.getParameter("birthday"));
		map.put("phone", req.getParameter("phone").replaceAll("\\D+", ""));
		map.put("email", req.getParameter("email"));
		map.put("country", req.getParameter("country"));
		map.put("city", req.getParameter("city"));
		map.put("region", req.getParameter("region"));

		resp.setContentType("text/html;charset=utf-8");

		if (godb.InsertData(map)) {
			String x = req.getParameter("lastName");
			req.setAttribute("reqMessage", "Інформацію про особистість з прізвищем " + x + " успішно збережено.");
		} else {
			req.setAttribute("reqMessage", "Сталася помилка при запису даних, спробуйте ще раз.");
		}

		req.getRequestDispatcher("FirstPage.jsp").forward(req, resp);

		super.doPost(req, resp);
	}

}
