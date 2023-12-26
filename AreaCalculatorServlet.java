package Servlet;

import tom.jiafei.Trapezoid;

import javax.servlet.*;
import javax.servlet.http.*;
import java.util.regex.*;
import java.io.*;
import java.lang.*;

public class AreaCalculatorServlet extends HttpServlet {
    @Override
    public void init() throws ServletException {
        super.init();
        ServletConfig config = getServletConfig();
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double upperBase = Double.parseDouble(request.getParameter("upperBase"));
        double lowerBase = Double.parseDouble(request.getParameter("lowerBase"));
        double height = Double.parseDouble(request.getParameter("height"));

        Trapezoid trapezoid = new Trapezoid();
        trapezoid.setUpperBase(upperBase);
        trapezoid.setLowerBase(lowerBase);
        trapezoid.setHeight(height);

        double S=(upperBase+lowerBase)*height/2;
        trapezoid.calculateArea(S);

        request.setAttribute("trapezoid", trapezoid);

        RequestDispatcher dispatcher = request.getRequestDispatcher("trapezoidInput.jsp");
        dispatcher.forward(request, response);
    }

}
