package Servlet;

import tom.jiafei.equationbean;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.lang.*;

public class equctionServlet extends HttpServlet{
    @Override
    public void init() throws ServletException {
        super.init();
        ServletConfig config = getServletConfig();
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double two = Double.parseDouble(request.getParameter("two"));
        double one = Double.parseDouble(request.getParameter("one"));
        double normal = Double.parseDouble(request.getParameter("normal"));

        double gen = (one * one) - (4 * two * normal);
        double root1,root2;
        boolean yesno;

        if(gen>0){
            root1 = (-one+Math.sqrt(gen))/(2*two);
            root2 = (-one-Math.sqrt(gen))/(2*two);
            yesno = true;
        }else if(gen==0){
            root1 = (-one+Math.sqrt(gen))/(2*two);
            root2 = Double.NaN;
            yesno = true;
        }else{
            root1 = Double.NaN;
            root2 = Double.NaN;
            yesno = false;
        }

        equationbean equation = new equationbean();
        equation.setRoot1(root1);
        equation.setRoot2(root2);
        equation.setYesno(yesno);

        request.setAttribute("equation",equation);
        RequestDispatcher dispatcher = request.getRequestDispatcher("equation.jsp");
        dispatcher.forward(request,response);
    }
}
